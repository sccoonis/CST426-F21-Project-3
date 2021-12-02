/// @description Pickup coin

with(other) {
	instance_destroy();
}

audio_play_sound(snd_coin, 2, false);
credits++;