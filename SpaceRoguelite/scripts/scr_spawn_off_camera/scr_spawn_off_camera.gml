function scr_spawn_off_camera(_obj, _num) {
	
	var pad = 64;
	
	repeat(_num) {
		var xx = random_range(0, room_width);
		var yy = random_range(0, room_height);
	
		// find a spawn point outside of the camera if not already
		while(point_in_rectangle(xx, yy,
								 global.cameraX - pad,							// o_____
								 global.cameraY - pad,							// |     |
								 global.cameraX + global.cameraWidth + pad,		// |  xy |
								 global.cameraY + global.cameraHeight + pad)) {	// |_____o
			var xx = random_range(0, room_width);
			var yy = random_range(0, room_height);
		}	
		instance_create_layer(xx, yy, "Instances", _obj);
	}
}