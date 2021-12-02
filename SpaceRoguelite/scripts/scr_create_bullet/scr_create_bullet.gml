function scr_create_bullet(_dir, _spd, _fac, _creator, _gun_type) {
	
	// make _gun_type an optional arguement
    if (_gun_type == undefined) {
		_gun_type = -1;
	}
	
	// choose gun type
	switch (_gun_type) {
		case powerups.doubleShot:
			audio_play_sound(snd_bullet, 1, false);
			
			var _separation = 12;	// length of offset from player
			
			var inst = instance_create_layer(x + lengthdir_x(_separation, _dir + 90),
											 y + lengthdir_y(_separation, _dir + 90),
											 "Instances", obj_bullet);						 
			scr_initialize_bullet(_dir, _spd, _fac, _creator, inst);
			
			var inst = instance_create_layer(x + lengthdir_x(_separation, _dir - 90),
											 y + lengthdir_y(_separation, _dir - 90),
											 "Instances", obj_bullet);
			scr_initialize_bullet(_dir, _spd, _fac, _creator, inst);
			break;
			
		case powerups.laser:
			audio_play_sound(snd_laser, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_laser);
			scr_initialize_bullet(_dir, _spd, _fac, _creator, inst);
			break;
			
		case powerups.backshot:
			audio_play_sound(snd_bullet, 1, false);
			break;
			
		default:
			audio_play_sound(snd_bullet, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			scr_initialize_bullet(_dir, _spd, _fac, _creator, inst);
			break;
	}
}
