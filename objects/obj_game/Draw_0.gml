/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("R")) game_restart();

if(!cropsManager.planting){ exit; }
var xx = 0;
var yy = 0;
var cs = cropsManager.cellSize;
var r = roomWidth div cs;
draw_set_alpha(0.3);
repeat (r){
	draw_line_color(xx, 0, xx, roomHeight, c_white, c_white);
	xx += cs;
}

var r = roomHeight div cs;

repeat (r){
	draw_line_color(0, yy, roomWidth, yy, c_white, c_white);
	yy += cs;
}
draw_set_alpha(1);

