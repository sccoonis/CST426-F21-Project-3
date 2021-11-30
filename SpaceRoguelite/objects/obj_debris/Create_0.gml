/// @description On creation, randomly pick a size and direction to be floating in

event_inherited();						// inherit from parent

sprite_index = choose(					// pick between "sizes"
	spr_sml_debris,
	spr_med_debris,
	spr_lrg_debris);	
	
	
direction = irandom_range(0, 359);		// pick a random vector to float in
image_angle = irandom_range(0, 359);	// pick a random visual offset

speed = 1;								// have them be moving