/// @description Initialize variables

score = 0;
lives = 3;

enum factions {
	ally,
	enemy,
	neutral
}

draw_set_font(fnt_text);

randomize();	//sets up rng