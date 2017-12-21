/// @description Insert description here
// You can write your code in this editor
if(room != rm_farm){
	planting = false;
	exit;
}
#region Planting
if(keyboard_check_pressed(ord("P")) && room == rm_farm){planting = !planting;}

if(planting){
	mx = mouse_x;
	my = mouse_y;
	
	if(mouse_wheel_up()) selectCrop--;
	if(mouse_wheel_down()) selectCrop++;
	
	if (selectCrop > sprite_get_number(spr_crops_picked)-1){selectCrop = sprite_get_number(spr_crops_picked)-1;}
	else if (selectCrop < 0 ) { selectCrop = 0;}
	if(mouse_check_button_pressed(mb_left)){
		scr_instance_create_crop(mx,my, selectCrop);
	}
}
#endregion

if(instance_exists(obj_crop) and keyboard_check_pressed(ord("G"))){
	with(obj_crop){
		if(growthStage < maxGrowthStage){
			daysOld++;
			
			//firstGrowth
			var firstGrowth = 0;
			if(daysOld > 0){
				firstGrowth = 1;
			}
			growthStage = firstGrowth + (daysOld div growthStageDuration);
		}else{
			growthStage = maxGrowthStage;
			fullyGrown = true;
			alarm[1] = 1;
		}
	}
}

var px = obj_player.x;
var py = obj_player.y;
var cs = 32;
var gx = mouse_x div cs;
var gy = mouse_y div cs;
var xx = gx*cs;
var yy = gy*cs;



if(!instance_exists(obj_crop)){
 exit;
}
var inst_crop = instance_nearest(xx,yy,obj_crop);

var r = 32;
var close_enough = false;
if(point_in_rectangle(px, py, px-r, py-r ,px+r, py+r)){
	close_enough = true;
}

with (inst_crop){
 if(mouse_check_button_pressed(mb_left) && inst_crop.fullyGrown && close_enough){
		show_debug_message("PFLUECKEN");
		//create item
	
		var inst = instance_create_layer(inst_crop.x,inst_crop.y,"Instances", obj_item);
		with(inst){
			item_num = 1;
			xframe = item_num mod (inst_crop.sprite_width/32);
			yframe = item_num div (inst_crop.sprite_width/32);
		}
	
	}
}


