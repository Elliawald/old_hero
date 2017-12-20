if(obj_input.pflug_down){
	show_debug_message("PFLUG UNTEN");
	tilemap_set_at_pixel(global.ground_plowed, 1, obj_player.x, obj_player.y);
}