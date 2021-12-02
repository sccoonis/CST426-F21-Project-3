/// @description Draw GUI

switch (room) {
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(room_width / 2, 100, "RETRO ROCKET", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 200,
				 "ARROW KEYS: move\nSPACE: shoot\nSHIFT: bomb\n\n>> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;
	
	case rm_debug:
		with(obj_player) {
			draw_text(20, 20, "HP: "    + string(hp) + "/" + string(maxHp));
			draw_text(20, 40, "cR: "    + string(credits));
			draw_text(20, 60, "BOMBS: " + string(bombs));
		}
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(room_width / 2, 200, "YOU WIN", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 300,
				 ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 300,
				 ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
}