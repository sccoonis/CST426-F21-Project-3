/// @description Initialize variables

score = 0;
lives = 3;

enum factions {
	ally,
	enemy,
	neutral
}

enum powerups {
	doubleShot,
	laser,
	backshot,
	shipVampirism,
	retromodularity,
	orbitals,
	maxHpUp,
	maxSpeedUp,
	shotDistanceUp,
	plusThreeBombs,
	plusFiveCredits,
}

draw_set_font(fnt_text);

randomize();	//sets up rng