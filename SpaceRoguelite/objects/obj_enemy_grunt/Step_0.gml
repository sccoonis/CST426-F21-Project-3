/// @description Become sentient when player is in range

// abort if player is dead
if (!instance_exists(obj_player)) {
	exit;
}

// if in range 
if (point_distance(x, y, obj_player.x, obj_player.y) < 250 ) {
	
	// turn to player
	var newAngle = point_direction(x, y, obj_player.x, obj_player.y);
	
	newAngle = image_angle - angle_difference(image_angle, newAngle);	// find closest way to spin
	
	image_angle = lerp(image_angle, newAngle, 0.05);						// 1% per frame
	
	// potshot
	bulletCounter++;
	if (bulletCounter >= 60) {
		scr_create_bullet(image_angle, 4, faction, id, 0);
		bulletCounter = 0;
	}
}
// else resume drifting
else
{
	//face direction already going
	image_angle = lerp(image_angle, direction, 0.05);						// 1% per frame
}
