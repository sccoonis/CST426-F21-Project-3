/// @description Take damage

instance_destroy();		//destroy the debris
	
if (sprite_index == spr_lrg_debris) {
	audio_play_sound(snd_bullet_hit_big, 2, false);
	score += 1000;
	repeat(2) {
		var newDebris = instance_create_layer(x, y, "Instances", obj_debris);
		newDebris.sprite_index = spr_med_debris;
	}
} else if (sprite_index == spr_med_debris) {
	audio_play_sound(snd_bullet_hit_big, 2, false);
	score += 100;
	repeat(2) {
		var newDebris = instance_create_layer(x, y, "Instances", obj_debris);
		newDebris.sprite_index = spr_sml_debris;
	}
}
else {
	audio_play_sound(snd_bullet_hit, 2, false);
	score += 50;
}
	
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}