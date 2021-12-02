/// @description On death

audio_play_sound(snd_bullet_hit_big, 2, false);
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

switch (object_index) {
	case obj_enemy_grunt:
		score += 2;
		break;
		
	case obj_enemy_ace:
		score += 3;
		break;
		
	case obj_enemy_goliath:
		score += 5;
		break;
}


chance = random_range(0.2, 1);

if (chance < 0.45) {
	exit;
}
else if (chance < 0.6) {
	// coin
	instance_create_layer(x, y, "Instances", obj_coin);
	randomize();
}
else if (chance < 0.8) {
	// heart
	instance_create_layer(x, y, "Instances", obj_heart);
	randomize();
}
else if (chance < 0.95) {
	// bomb
	instance_create_layer(x, y, "Instances", obj_bomb);
	randomize();
}
else {
	// jackpot
	with(instance_create_layer(x, y, "Instances", obj_powerup)) {
		jackpot = irandom_range(6, 10);
		// Max HP up
		// Max Speed up
		// Shot distance up
		// 3 Bombs
		// 5 credits
		image_index = jackpot;
		randomize();
	}
}