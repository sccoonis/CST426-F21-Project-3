/// @description Check if bullet still in camera view

//image_alpha -= 0.01;

//if (image_alpha <= 0) {
//	instance_destroy();
//}

if (!point_in_rectangle(x, y,
					   global.cameraX,							// o_____
					   global.cameraY,							// |     |
					   global.cameraX + global.cameraWidth,		// |  xy |
					   global.cameraY + global.cameraHeight)) {	// |_____o
	instance_destroy();
}