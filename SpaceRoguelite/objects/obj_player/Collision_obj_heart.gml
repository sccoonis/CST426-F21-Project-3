/// @description Pickup health

with(other) {
	instance_destroy();
}

if (hp < maxHp) {
	audio_play_sound(snd_powerup, 2, false);
	hp++;
}