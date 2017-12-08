/// @description Insert description here
// You can write your code in this editor

var item = global.inventory[slot];
var click = mouse_check_button_pressed(mb_left);

if((abs(mouse_x -x) < 16 && (abs(mouse_y - y) < 16)) && showInv == true){
	if(click){
		if(item != -1)
		{
			scr_itemdrop_slot(slot);
		}
		if(mouseItem != -1){
			scr_itempickup_slot(mouseItem,slot);
		}
		mouseItem = item;	
	}
}


if(item != -1 && showInv == true ){
	draw_sprite(spr_items,item,x,y);
}