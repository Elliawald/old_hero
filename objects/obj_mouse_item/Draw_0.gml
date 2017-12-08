/// @description Insert description here
// You can write your code in this editor

var item = mouseItem;
if(item != -1 && showInv == true){
	global.attackblock = 1;
	x = mouse_x;
	y = mouse_y;
	draw_sprite(spr_items,item,x,y);
}else{
	global.attackblock = 0;
}