/// @description Obtain powerup

with(other) {
	var powerupType = image_index;
	instance_destroy();
}

switch (powerupType) {
	
	case powerups.maxHpUp:
		audio_play_sound(snd_powerup_mega, 2, false);
		maxHp++;
		hp++;
		break;
		
	case powerups.maxSpeedUp:
		audio_play_sound(snd_powerup_mega, 2, false);
		maxAsteroidsSpeed += 0.2;
		maxBosconianSpeed += 0.2;
		break;
		
	case powerups.plusFiveCredits:
		audio_play_sound(snd_coin, 2, false);
		credits += 5;
		break;
		
	case powerups.plusThreeBombs:
		audio_play_sound(snd_powerup, 2, false);
		bombs += 3;
		break;
		
	case powerups.shotDistanceUp:
		// TODO increase distance of bullet fired
		audio_play_sound(snd_powerup_mega, 2, false);
		break;
		
	case powerups.retromodularity:
		audio_play_sound(snd_powerup_mega, 2, false);
		retromodularity = true;
		break;
	
	case powerups.shipVampirism:
		audio_play_sound(snd_powerup_mega, 2, false);
		shipVampirism = true;
		break;
	
	default:
		// change guns
		audio_play_sound(snd_powerup_mega, 2, false);
		gunType = powerupType;
		break;
}