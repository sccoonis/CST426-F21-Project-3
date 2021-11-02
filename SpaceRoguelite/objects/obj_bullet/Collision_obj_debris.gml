/// @description Handle debris when shot

instance_destroy();

with(other) {				//refers to what is being collided with
	instance_destroy();		//destroy the debris
	
	if (sprite_index == spr_lrg_debris) {
		repeat(2) {
			var newDebris = instance_create_layer(x, y, "Instances", obj_debris);
			newDebris.sprite_index = spr_med_debris;
		}
	} else if (sprite_index == spr_med_debris) {
		repeat(2) {
			var newDebris = instance_create_layer(x, y, "Instances", obj_debris);
			newDebris.sprite_index = spr_sml_debris;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris_effect);
	}
}