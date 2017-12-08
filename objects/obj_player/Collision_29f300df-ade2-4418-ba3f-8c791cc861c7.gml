/// @description collect health
with(other) {
	instance_destroy();
}

//level up code
with (obj_player_stats){
	hp = min(hp + 5, maxhp);	
}

