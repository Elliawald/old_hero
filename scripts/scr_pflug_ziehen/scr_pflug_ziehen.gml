//get direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis)
if(obj_input.pflug_down){
	var spd = 1;
}else{
	var spd = 2;
}

//get length
if(obj_input.xaxis == 0 && obj_input.yaxis == 0){
	len = 0;
} else {
	len = spd;
	scr_get_face();
}

//get vspeed and hspeed
/*hspd = len;
vspd = len;
*/

if(instance_exists(obj_pflug)){
	//pflug controlls
	var pflug = instance_nearest(obj_player.x,obj_player.y,obj_pflug);
	


switch(face){
	case global.right:
	sprite_index = sprite_player_right;
	pflug.phy_position_x = x-sprite_width;
	pflug.phy_position_y = y;
	hspd = len;
	vspd = 0;
	break;
	case global.left:
	sprite_index = sprite_player_left;
	pflug.phy_position_x = x+sprite_width;
	pflug.phy_position_y = y;
	hspd = -len;
	vspd = 0;
	break;
	case global.up:
	sprite_index = sprite_player_up;
	pflug.phy_position_y = y+sprite_height;
	pflug.phy_position_x = x;
	vspd = -len;
	hspd = 0;
	break;
	case global.down:
	sprite_index = sprite_player_down;
	pflug.phy_position_y = y-sprite_height;
	pflug.phy_position_x = x;
	hspd = 0;
	vspd = +len;
	break;
}


if(alarm[0] <= 1){
	global.plow_active = 1;
}

//move

	phy_position_x += hspd;
	phy_position_y += vspd;


	//controll the sprite
	image_speed = .2;
	if(len == 0){
	image_index = 0;
	}

	obj_pflug.phy_position_x += hspd;
	obj_pflug.phy_position_y += vspd;
	if(obj_input.pflug_down){
		with(obj_pflug){
			var gx = x div cs;
			var gy = y div cs;
			var xx = gx*cs;
			var yy = gy*cs;
	
			var tile_id = layer_tilemap_get_id("T_Soil");
			tilemap_set_at_pixel(tile_id,1,xx,yy);
		}
	}
	

	
	if(obj_input.pflug_key && global.pflug_state == 1){
		image_index = 0;
		global.pflug_state = 0;
		instance_destroy(pflug);
		state = scr_move_state;
	}
}