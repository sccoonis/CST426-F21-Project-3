/// @description Initialize room with asteroids

if (room == rm_debug) {
	
	repeat(6) {
		var xx = choose(irandom_range(0, room_width * 0.3),
						 irandom_range(room_width * 0.7, room_width));		// somewhere in the left
																			// or right third of screen
		var yy = choose(irandom_range(0, room_height * 0.3),
						 irandom_range(room_height * 0.7, room_height));	// somewhere in the top or
																			// bottom third of screen
		instance_create_layer(xx, yy, "Instances", obj_debris);
	}
	
	alarm[0] = room_speed * 1;	// 60fps by default so after 1sec
}
