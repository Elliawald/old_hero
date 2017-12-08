///scr_move_state
if(len == 0){
	dir = face * 90;
}

len = spd * 4;
//get vspeed and hspeed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//create the dash effect
var dash_layer = layer_create(0);
var dash = instance_create_layer(x, y, dash_layer,obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;