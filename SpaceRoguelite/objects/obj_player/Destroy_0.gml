/// @description On death

audio_play_sound(snd_player_death, 2, false);

instance_destroy();
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

with(obj_game) {
	alarm[1] = room_speed * 2;	// slightly redundant but able to change linger time if want later
}