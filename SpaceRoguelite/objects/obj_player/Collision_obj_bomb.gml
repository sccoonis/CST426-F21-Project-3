/// @description Pickup bomb

with(other) {
	instance_destroy();
}

audio_play_sound(snd_powerup, 2, false);
bombs++;