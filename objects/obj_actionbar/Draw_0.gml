/// @description draw the inventory

if(showBar){
	var x1, x2, y1, y2;
	if(mouse_wheel_down() && global.active_slot < 7){
		global.active_slot++;
	}
	else if(mouse_wheel_up() && global.active_slot > 0){
		global.active_slot--;
	}	

	x1 = camera_get_view_x(view_camera[0]);
	x2 = x1 + camera_get_view_width(view_camera[0]);
	y1 = camera_get_view_y(view_camera[0])+ camera_get_view_height(view_camera[0]);
	y2 = y1-25;
	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_alpha(1);
	
	for(i=0; i < maxItems_bar; i++){
		var ix = x1 + 24 + (i * 40);
		var iy = y2+14;
		
		draw_sprite(spr_border,0,ix,iy);
		button[i].x = ix;
		button[i].y = iy;
	}
		//draw active itembackground
		draw_set_color(c_white);
		draw_set_alpha(0.8);
		draw_rectangle(button[global.active_slot].x + 7,button[global.active_slot].y + 7,button[global.active_slot].x-7,button[global.active_slot].y - 7,0);
		draw_set_alpha(1);
	
	

}