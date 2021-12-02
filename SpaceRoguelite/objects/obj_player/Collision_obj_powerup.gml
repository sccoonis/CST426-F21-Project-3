/// @description Obtain powerup

with(other) {
	var powerupType = image_index;
	instance_destroy();
}

switch (powerupType) {
	
	case powerups.maxHpUp:
		maxHp++;
		hp++;
		break;
		
	case powerups.maxSpeedUp:
		// TODO asteroids max speed
		maxBosconianSpeed += 0.2;
		break;
		
	case powerups.plusFiveCredits:
		credits += 5;
		break;
		
	case powerups.plusThreeBombs:
		bombs += 3;
		break;
		
	case powerups.shotDistanceUp:
		// TODO increase distance of bullet fired
		break;
		
	case powerups.retromodularity:
		retromodularity = true;
		break;
	
	case powerups.shipVampirism:
		shipVampirism = true;
		break;
	
	default:
		// change guns
		gunType = powerupType;
		break;
}