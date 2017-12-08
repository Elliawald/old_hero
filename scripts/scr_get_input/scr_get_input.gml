///scr_get_input

right_key	=	keyboard_check(ord("D"));
left_key	=	keyboard_check(ord("A"));
up_key		=	keyboard_check(ord("W"));
down_key	=	keyboard_check(ord("S"));
dash_key	=	mouse_check_button_pressed(mb_right);
attack_key  =   mouse_check_button_pressed(mb_left);
pause_key	=	keyboard_check_pressed(vk_escape); 
fill_key		=	keyboard_check(ord("R")); 
deplete_key		=	keyboard_check(ord("T")); 
use_key		=	keyboard_check(ord("E")); 
inventory_key =	keyboard_check(ord("I")); 	
use_key_pressed = keyboard_check_pressed(ord("E"));
pflug_key = keyboard_check_pressed(ord("1"));
pflug_down	=	mouse_check_button(mb_right);

xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//check if gamepad is connected
if(gamepad_is_connected(0)){
	gamepad_set_axis_deadzone(0, .35);
	xaxis	=	gamepad_axis_value(0, gp_axislh);
	yaxis	=	gamepad_axis_value(0, gp_axislv);
	dash_key	=	gamepad_button_check_pressed(0, gp_face1);
	attack_key	=	gamepad_button_check_pressed(0, gp_face2);
	use_key	=	gamepad_button_check_pressed(0, gp_face3);
	pause_key	=	gamepad_button_check_pressed(0, gp_start);
	fill_key		=	gamepad_button_check(0, gp_shoulderl); 
	deplete_key		=	gamepad_button_check(0, gp_shoulderr); 
}