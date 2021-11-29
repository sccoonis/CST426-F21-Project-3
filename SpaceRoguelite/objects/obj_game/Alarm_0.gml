/// @description Spawn asteroids continuously 

// do nothing if not in game
if (room != rm_debug) {
	exit;
}

scr_spawn_off_camera(obj_debris, 1)

alarm[0] = room_speed * 1;	// 60fps by default so after 1sec repeat this function