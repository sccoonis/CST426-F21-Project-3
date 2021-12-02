/// @description Roll for item spawn and split if big

if (sprite_index == spr_sml_debris) {
	chance = random_range(0 ,1);
	
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
}

if (sprite_index == spr_lrg_debris) {
	audio_play_sound(snd_bullet_hit_big, 2, false);
	score += 1;
	repeat(2) {
		var newDebris = instance_create_layer(x, y, "Instances", obj_debris);
		newDebris.sprite_index = spr_med_debris;
	}
} else if (sprite_index == spr_med_debris) {
	audio_play_sound(snd_bullet_hit_big, 2, false);
	score += 1;
	repeat(2) {
		var newDebris = instance_create_layer(x, y, "Instances", obj_debris);
		newDebris.sprite_index = spr_sml_debris;
	}
}
else {
	audio_play_sound(snd_bullet_hit, 2, false);
	score += 2;
}
	
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

