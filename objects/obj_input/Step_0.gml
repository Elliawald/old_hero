/// @description get input

scr_get_input();

//pause the game
if(pause_key){
	showInv = true;
	if(room != rm_pause){
		if(instance_exists(obj_player)){
			obj_player.persistent = false;
		}
		previous_room = room;
		room_goto(rm_pause);
	}else{
		showInv = false;
		room_goto(previous_room);
	}
}