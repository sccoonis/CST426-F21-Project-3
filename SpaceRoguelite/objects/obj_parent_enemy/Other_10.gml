/// @description Take damage

HP -= 1;
if (HP <= 0) {
	instance_destroy();
}