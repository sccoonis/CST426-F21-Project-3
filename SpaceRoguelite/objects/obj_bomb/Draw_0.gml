/// @description Fade away as despawning

var alpha = min(2, alarm[0] / 60); // 2 sec left

draw_sprite_ext(spr_bomb, 0, x, y,
				image_xscale, image_yscale, image_angle, image_blend, alpha);