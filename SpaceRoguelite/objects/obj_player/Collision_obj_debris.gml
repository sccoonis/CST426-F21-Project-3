/// @description Collision with debris

lives -= 1;

audio_play_sound(snd_player_hit, 50, false);

instance_destroy();
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

with(obj_game) {
	alarm[1] = room_speed * 1;	// slightly redundant but able to change linger time if want later
}