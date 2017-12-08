/// @description Insert description here
// You can write your code in this editor
#region Planting
if(keyboard_check_pressed(ord("P"))){planting = !planting;}

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