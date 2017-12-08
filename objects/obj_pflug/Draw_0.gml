/// @description Insert description here
// You can write your code in this editor

switch(obj_player.face){
	case global.right:
	image_angle = -90;
	temp = 1;
	break;
	case global.left:
	image_angle = 90;
	temp = 2;
	break;
	case global.up:
	image_angle = 0;
	temp = 3;
	break;
	case global.down:
	image_angle = 180;
	temp = 4;
	break;
}


draw_self();