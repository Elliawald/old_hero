///scr_move_state
scr_get_input();


if(obj_input.dash_key){
	var xdir = lengthdir_x(8, face*90);
	var ydir = lengthdir_y(8, face*90);
	var text_layer = layer_create(3);
	var speaker = instance_place(x+xdir,y+ydir,obj_speaker);
	if(speaker != noone){
		//talk to it
				with(speaker){
			if(!instance_exists(dialog)){
				dialog = instance_create_layer(x-6, y-20,text_layer,obj_dialog);
				dialog.text = text;
			}else{
				dialog.text_page++;
				dialog.text_count = 0;
				if(dialog.text_page > array_length_1d(dialog.text)-1){
					with(dialog){
						instance_destroy();
					}
				}
			}
		}
	}else if(obj_player_stats.stamina >= 5){
		//dash		
		state = scr_dash_state;
		alarm[0] = room_speed/7;
		obj_player_stats.stamina -= 5;
		obj_player_stats.alarm[0] = room_speed;
	}
}

if(obj_input.attack_key && global.attackblock != 1){
	//start attack animation at the beginning so it doesnt look clunky
	image_index = 0;
	
	state = scr_attack_state;
	
}




if(obj_input.pflug_key && global.pflug_state == 0){
	image_index = 0;
	global.pflug_state = 1;
	switch(obj_player.face){
		case global.right:
			instance_create_layer(x-sprite_width,y,"Instances",obj_pflug);
		break;
		case global.left:
			instance_create_layer(x+sprite_width,y,"Instances",obj_pflug);	
		break;
		case global.up:
			instance_create_layer(x,y+sprite_height,"Instances",obj_pflug);
		break;
		case global.down:
			instance_create_layer(x,y-sprite_height,"Instances",obj_pflug);
		break;	
	}		
	
	state = scr_pflug_ziehen;
}





var fass1 = instance_find(obj_fass,0);
var fass2 = instance_find(obj_fass,1);
var topf = instance_find(obj_topf,0);

scr_umfuellen(fass1);
scr_umfuellen(fass2);
scr_umfuellen(topf);

if(place_meeting(obj_player.x,obj_player.y,obj_item) && obj_input.use_key_pressed){
	 var item = instance_nearest(x,y,obj_item);
	// scr_item_pickup_from_floor(item.ItemID);
	instance_destroy(item);
}


if(place_meeting(x,y,obj_crop) && obj_input.use_key_pressed){
		show_debug_message("PFLUECKEN");
		//create item
		var cropinst = instance_nearest(x,y,obj_crop);
		var inst = instance_create_layer(cropinst.x,cropinst.y,"Instances", obj_item);
		with(inst){
			item_num = cropinst.cropType+1;
			xframe = item_num mod (spr_width/cellSize);
			yframe = item_num div (spr_width/cellSize);
		}
		with(cropsManager){
			var cs = cellSize;
			var gx = (cropinst.x div cs);
			var gy = (cropinst.y div cs);

			xx = gx * cs;
			yy = gy * cs;
			ds_crops_instances[# gx, gy] = 0;
		}
		instance_destroy(cropinst);	
}



//get direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis)

//get length
if(obj_input.xaxis == 0 && obj_input.yaxis == 0){
	len = 0;
} else {
	len = spd;
	scr_get_face();
}


//get vspeed and hspeed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move

phy_position_x += hspd;
phy_position_y += vspd;

//controll the sprite
image_speed = .2;
if(len == 0){
image_index = 0;
}

switch(face){
	case global.right:
	sprite_index = sprite_player_right;
	break;
	case global.left:
	sprite_index = sprite_player_left;
	break;
	case global.up:
	sprite_index = sprite_player_up;
	break;
	case global.down:
	sprite_index = sprite_player_down;
	break;
}