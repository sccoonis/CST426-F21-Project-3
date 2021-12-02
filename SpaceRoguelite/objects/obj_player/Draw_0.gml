/// @description Draw powerups on player

draw_self();

// Draw guns
if (gunType != -1) {
	draw_sprite_ext(spr_powerup_applied, gunType, x, y,
					image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

// TODO Hitflash
if (invulnerable) {
	
}