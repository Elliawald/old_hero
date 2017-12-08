/// @description Insert description here
// You can write your code in this editor

var item = global.inventory2[slot];
var click = mouse_check_button_pressed(mb_left);
	
if((abs(mouse_x - x) < 16 && (abs(mouse_y - y) < 16)) && showBar == true){
	if(click){
		if(item != -1)
		{
			scr_itemdrop_slot_actionbar(slot);
		}
		if(mouseItem != -1){
			scr_itempickup_slot_actionbar(mouseItem,slot);
		}
		mouseItem = item;	
	}
}
	

if(item != -1 && showBar == true ){
	draw_sprite(spr_items,item,x,y);
}