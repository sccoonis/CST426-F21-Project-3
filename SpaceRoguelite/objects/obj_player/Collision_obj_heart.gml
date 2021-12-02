/// @description Pickup health

with(other) {
	instance_destroy();
}

if (hp < maxHp) {
	hp++;
}