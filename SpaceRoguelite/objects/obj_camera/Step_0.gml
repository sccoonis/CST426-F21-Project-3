/// @description Follow Target

if (instance_exists(target)) {
	// camera anchors to (0,0) so this puts player in middle
	global.cameraX = target.x - (global.cameraWidth / 2);		
	global.cameraY = target.y - (global.cameraHeight / 2);

	// visually show edges of room exist by preventing camera showing it
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);