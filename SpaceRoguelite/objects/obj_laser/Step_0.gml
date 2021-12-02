/// @description Variable code

image_blend = irandom_range(255,16700000)

if (!instance_exists(creator)) {
	instance_destroy();
	exit;
}

x = creator.x;
y = creator.y;
direction = creator.image_angle;