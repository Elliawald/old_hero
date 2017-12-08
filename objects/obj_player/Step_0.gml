/// @description Moving the player
depth = -y;
var dy = v_speed;
v_speed +=grav;
script_execute(state);
if(obj_player_stats.hp <= 0){
	instance_destroy();
}

