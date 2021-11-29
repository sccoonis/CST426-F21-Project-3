/// @description Initialize room with asteroids

if (room == rm_debug) {
	scr_spawn_off_camera(obj_debris, 40);
	
	// bgm documentation for later
	/*
	if (audio_is_playing(SOMESONG)) {
		audio_stop_sound(SOMESONG)
	}
	audio_play_sound(SOMESONG, 3, true);
	*/
	

	
	alarm[0] = room_speed * 1;	// 60fps by default so after 1sec
}
