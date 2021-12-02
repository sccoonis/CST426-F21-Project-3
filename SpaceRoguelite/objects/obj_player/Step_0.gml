/// @description Code for movement and shooting

// Asteroids-style
if (mode = 0) {
	if (keyboard_check(vk_left)) {				// per frame if holding left
		image_angle += 5;						// rotate counterclockwise 5 degrees
	}

	if (keyboard_check(vk_right)) {				// per frame if holding right
		image_angle -= 5;						// rotate clockwise 5 degrees
	}

	if (keyboard_check(vk_up)) {
		if (speed <= maxAsteroidsSpeed) {
			motion_add(image_angle, 0.1);
		}
		else {
			speed = maxAsteroidsSpeed;
		}
	}
	
	if (keyboard_check_pressed(vk_space)) {								// per frame if the spacebar
																		// has been pressed
																		
		scr_create_bullet(image_angle, bulletSpeed, faction, id, gunType);
	}
}

// Bosconian-style
////////////////////////////////////////////
if (mode = 1) {
	if (keyboard_check(vk_up)) {			// NORTHS
		if (keyboard_check(vk_left)) {		// NW
			image_angle = 135;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else if (keyboard_check(vk_right)) {// NE
			image_angle = 45;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else {
			image_angle = 90;				// N
			motion_set(image_angle, maxBosconianSpeed);
		}
	}
	////////////////////////////////////////////
	if (keyboard_check(vk_right)) {			// EASTS
		if (keyboard_check(vk_up)) {		// NE
			image_angle = 45;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else if (keyboard_check(vk_down)) {	// SE
			image_angle = 315;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else {
			image_angle = 0;				// E
			motion_set(image_angle, maxBosconianSpeed);
		}
	}
	////////////////////////////////////////////
	if (keyboard_check(vk_down)) {			// SOUTHS
		if (keyboard_check(vk_right)) {		// SE
			image_angle = 315;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else if (keyboard_check(vk_left)) {	// SW
			image_angle = 225;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else {
			image_angle = 270;				// S
			motion_set(image_angle, maxBosconianSpeed);
		}
	}
	////////////////////////////////////////////
	if (keyboard_check(vk_left)) {			// WESTS
		if (keyboard_check(vk_down)) {		// SW 
			image_angle = 225;
			motion_set(image_angle, maxBosconianSpeed);
		}
		else if (keyboard_check(vk_up)) {	// NW
			image_angle = 135;
			motion_set(image_angle, maxBosconianSpeed);
		} else {
			image_angle = 180;				// W
			motion_set(image_angle, maxBosconianSpeed);
		}
	}	
	
	if (keyboard_check_pressed(vk_space)) {							// per frame if the spacebar
																	// has been pressed
																		
		scr_create_bullet(image_angle, bulletSpeed, faction, id, gunType);
	}
}
////////////////////////////////////////////

move_wrap(true, true, sprite_width / 2);	// x and y wrap with margin being half the sprite