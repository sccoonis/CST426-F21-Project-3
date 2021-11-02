/// @description Collision with debris

instance_destroy();
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris_effect);
}

//game_restart();