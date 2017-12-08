/// @description damage the player
if(state != scr_enemy_stall_state){
	var dir = point_direction(other.x, other.y, x, y);
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(1, dir);
	var attack_layer = layer_create(1);
	var damage = instance_create_layer(other.x+xdir,other.y + ydir, attack_layer, obj_damage);
	damage.creator = id;
	damage.knockback = 5;
	state = scr_enemy_stall_state;
	alarm[1] = room_speed;
}