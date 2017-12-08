/// @description collect experience
with(other) {
	instance_destroy();
}

//level up code
with (obj_player_stats){
	expr += 1;
	if(expr >= maxexpr){
	level += 1;
	expr = expr - maxexpr;
	maxexpr *= 2;
	hp += 2;
	maxhp +=2;
	stamina += 2;
	maxstamina += 2;
	attack += 1;
	}
}
