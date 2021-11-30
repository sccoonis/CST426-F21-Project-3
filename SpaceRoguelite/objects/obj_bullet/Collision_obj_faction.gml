/// @description Hit detection

// Check if shot self
if (other.id == creator) {
	exit;
}

instance_destroy();

// Check if object is part of own faction
if (other.faction == faction) {
	exit;
}

// Apply damage
with(other) {
	event_perform(ev_other, ev_user0);	// call hit target's "Take damage" event
}