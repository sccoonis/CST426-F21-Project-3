/// @description Collision with debris

lives -= 1;

audio_play_sound(snd_player_hit, 50, false);

instance_destroy();
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

//game_restart();