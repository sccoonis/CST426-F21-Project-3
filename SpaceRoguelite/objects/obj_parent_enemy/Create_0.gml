/// @description Define properties of base enemy unit

event_inherited();

speed = 2;
direction = random_range(0, 359);
image_angle = direction;

HP = 1;
bulletCounter = 0;
originalSpeed = speed;