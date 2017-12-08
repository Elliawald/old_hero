if(place_meeting(obj_player.x,obj_player.y,argument0)){
	if (instance_exists(obj_topf) && obj_input.use_key && argument0.capacity < argument0.max_capacity && scr_itemcheck_slot(global.active_slot) != 0 ){
		//argument0.capacity += 5;
		scr_item_transfer_to_topf(scr_itemcheck_transfer_slot(global.active_slot)); 		
	}
	if (obj_input.fill_key && argument0.capacity < argument0.max_capacity && global.eimer.capacity > 0) {
		if(global.eimer.getraenk == argument0.getraenk || argument0.getraenk == -1 || global.eimer.getraenk == -1 ){
			global.eimer.capacity--;
			argument0.getraenk = global.eimer.getraenk;
			argument0.capacity ++;
		}
		
	}else if(obj_input.deplete_key && argument0.capacity > 0 && global.eimer.capacity < global.eimer.max_capacity){
		if(global.eimer.getraenk == argument0.getraenk || argument0.getraenk == -1 || global.eimer.getraenk == -1 ){
			argument0.capacity --;
			global.eimer.getraenk = argument0.getraenk;
			global.eimer.capacity++;
			}
	}
	if(argument0.capacity == 0){
		argument0.getraenk = -1;
	}
	if(global.eimer.capacity == 0){
		global.eimer.getraenk = -1;
	}
}