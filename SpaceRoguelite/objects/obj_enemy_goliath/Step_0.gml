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
	
	image_angle = lerp(image_angle, newAngle, 0.1);						// 10% per frame
	
	// begin chasing
	direction = image_angle;
	
	speed += 0.005;
	
}
// else return to old speed
else
{
	speed = lerp(speed, originalSpeed, 0.1);						// 10% per frame
}
