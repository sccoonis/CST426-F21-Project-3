/// @description Handle collision with different factions

// Check if object is part of own faction
if (other.faction == faction) {
	exit;
}


// Take damage
event_perform(ev_other, ev_user0);