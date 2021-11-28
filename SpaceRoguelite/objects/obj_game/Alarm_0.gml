/// @description Spawn asteroids continuously 

// do nothing if not in game
if (room != rm_debug) {
	exit;
}

if (choose(0,1) == 0) {	// coin toss
	// sides
	var xx = choose(0, room_width);					// left or right
	var yy = choose(irandom_range(0, room_height));	// somewhere along that side
}
else {
	// top / bottom
	var xx = choose(irandom_range(0, room_width));	// somewhere along the top or bottom
	var yy = choose(0, room_height);				// top or bottom
}

instance_create_layer(xx, yy, "Instances", obj_debris);

alarm[0] = room_speed * 4;	// 60fps by default so after 4sec repeat this function