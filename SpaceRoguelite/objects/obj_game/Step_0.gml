/// @description Logic for Room Transitions

if (keyboard_check_pressed(vk_enter)) {
	switch (room) {
		case rm_start:
			room_goto(rm_debug);
			break;
			
		case rm_win:
		case rm_gameover:		//no break from previous case means will "catch" for both
			game_restart();
			break;
			
	}
}

if (room == rm_debug) {
	if (score >= 2500) {
		room_goto(rm_win);
	}

	if (lives <= 0) {
		room_goto(rm_gameover);
		audio_play_sound(snd_game_over, 1, false);
	}
}