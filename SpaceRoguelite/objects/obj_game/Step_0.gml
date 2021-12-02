/// @description Logic for Room Transitions and other

if (keyboard_check_pressed(vk_enter)) {
	switch (room) {
		case rm_start:
			room_goto(rm_debug);
			break;
			
		case rm_debug:
			with(obj_player) {
				if (retromodularity = true) {
					if (mode == 1) {
						mode = 0;
					}
					else {
						mode = 1;
					}
				}
			}
			break;
			
		case rm_win:
		case rm_gameover:		//no break from previous case means will "catch" for both
			game_restart();
			break;
	}
}

if (score >= 50) {
	score -= 50;
	scr_spawn_off_camera(obj_powerup, 1);
}

with(obj_player) {
	if (credits >= 15) {
		credits -= 15;
		audio_play_sound(snd_powerup, 2, false);
		bombs++;
	}
}