function scr_initialize_bullet(_dir, _spd, _fac, _creator, _inst){
	with(_inst) {
		direction = _dir;
		if (object_index == obj_laser) {
			speed     = _spd;
		}
		faction   = _fac;
		creator   = _creator;
		
		if (faction == factions.ally) {
			image_blend = c_aqua;
		}
		else if (faction == factions.enemy) {
			image_blend = c_red;
		}
	}
}