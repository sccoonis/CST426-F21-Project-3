/// @description Code for movement

//Asteroids-style
if (mode = 0) {
	if (keyboard_check(vk_left)) {				//per frame if holding left
		image_angle += 5;						//rotate counterclockwise 5 degrees
	}

	if (keyboard_check(vk_right)) {				//per frame if holding right
		image_angle -= 5;						//rotate clockwise 5 degrees
	}

	if (keyboard_check(vk_up)) {				//per frame if holding up
		motion_add(image_angle, 0.1);	//increase speed in current direction by 0.05
	}
}

//Bosconian-style
////////////////////////////////////////////
if (mode = 1) {
	if (keyboard_check(vk_up)) {			// NORTHS
		if (keyboard_check(vk_left)) {		// NW
			image_angle = 135;
		}
		else if (keyboard_check(vk_right)) {// NE
			image_angle = 45; 
		}
		else {
			image_angle = 90;				// N
		}
	}
	////////////////////////////////////////////
	if (keyboard_check(vk_right)) {			// EASTS
		if (keyboard_check(vk_up)) {		// NE
			image_angle = 45; 
		}
		else if (keyboard_check(vk_down)) {	// SE
			image_angle = 315; 
		}
		else {
			image_angle = 0;				// E
		}
	}
	////////////////////////////////////////////
	if (keyboard_check(vk_down)) {			// SOUTHS
		if (keyboard_check(vk_right)) {		// SE
			image_angle = 315; 
		}
		else if (keyboard_check(vk_left)) {	// SW
			image_angle = 225; 
		}
		else {
			image_angle = 270;				// S
		}
	}
	////////////////////////////////////////////
	if (keyboard_check(vk_left)) {			// WESTS
		if (keyboard_check(vk_down)) {		// SW 
			image_angle = 225; 
		}
		else if (keyboard_check(vk_up)) {	//NE
			image_angle = 135; 
		} else {
			image_angle = 180;				//W
		}
	}
}
////////////////////////////////////////////

move_wrap(true, true, sprite_width / 2);		//x and y wrap with margin being half the sprite