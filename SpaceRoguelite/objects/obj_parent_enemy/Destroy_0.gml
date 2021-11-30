/// @description On death

audio_play_sound(snd_bullet_hit_big, 2, false);
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

switch (object_index) {
	case obj_enemy_grunt:
		score += 500;
		break;
		
	case obj_enemy_ace:
		score += 1000;
		break;
		
	case obj_enemy_goliath:
		score += 2000;
		break;
}