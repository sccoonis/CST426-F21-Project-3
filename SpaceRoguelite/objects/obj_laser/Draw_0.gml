/// @description Creation and collision

var length = 300;

// Draw line
draw_line_width_color(x, y,
					  x + lengthdir_x(length, direction), y + lengthdir_y(length, direction),
					  2, image_blend, image_blend);

// Collision
var inst = collision_line(x + 5, y + 5,
						  x + lengthdir_x(length, direction), y + lengthdir_y(length, direction),
						  obj_faction, false, false);
						  
if (inst != noone) {							// if hit something
	if (inst.faction != faction) {				// if not our own faction
		with(inst) {
			event_perform(ev_other, ev_user0);	// activate damage event
		}
	}
}