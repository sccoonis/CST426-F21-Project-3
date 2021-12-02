/// @description Take damage

if (invulnerable) {
	exit;
}

hp--;
if (hp <= 0) {
	instance_destroy();
}
else {
	audio_play_sound(snd_player_hit, 2, false);
	invulnerable = true;
	alarm[0] = room_speed * 1;
}

if (hp == 1) {
	audio_play_sound(snd_alarm, 2, false);
}