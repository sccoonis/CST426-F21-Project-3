/// @description Camera Setup

// Since create event happens once, this needs to be done dynamically per room

// Camera
global.cameraX = 0;
global.cameraY = 0;

target = obj_player;	// follows

global.cameraWidth = 500;		// px
global.cameraHeight = 500;		// px

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

if (instance_exists(target)) {
	// camera anchors to (0,0) so this puts player in middle
	global.cameraX = target.x - (global.cameraWidth / 2);		
	global.cameraY = target.y - (global.cameraHeight / 2);

	// visually show edges of room exist by preventing camera showing it
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

// Display
displayScale = 2;		// scale of camera

displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

// GUI
display_set_gui_size(global.cameraWidth, global.cameraHeight);

// -----
if (room = rm_start) {
	alarm[0] = 1;
}