if (keyboard_check_pressed(ord("I"))){
	show_inventory = !show_inventory;
}

if(!show_inventory){
	exit;
}

#region # mouse slot
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cellSize+x_buffer)*scale;
var cell_ybuff = (cellSize+y_buffer)*scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height){
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_ybuff);
	
	
	if((sx < cellSize*scale) and (sy < cellSize*scale)){
		m_slotx = nx;
		m_sloty = ny;
	}
	selected_slot = min(inv_slots-1, m_slotx + (m_sloty*inv_slots_width));
}else{
	exit;
}

// set selected slot to mouse pos
	
#endregion

//pickup item
var ss_item = global.ds_inventory[# 0, selected_slot];


if(pickup_slot != -1 ){
	if(mouse_check_button_pressed(mb_left)){
			
		if(ss_item == item.none){
			global.ds_inventory[# 0, selected_slot] = global.ds_inventory[# 0, pickup_slot];
			global.ds_inventory[# 1, selected_slot] = global.ds_inventory[# 1, pickup_slot];
			
			global.ds_inventory[# 0, pickup_slot] = item.none;
			global.ds_inventory[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
			
		}else if(ss_item == global.ds_inventory[# 0, pickup_slot]){
			if(selected_slot != pickup_slot){
				global.ds_inventory[# 1, selected_slot] += global.ds_inventory[# 1, pickup_slot];
				
				global.ds_inventory[# 0, pickup_slot] = item.none;
				global.ds_inventory[# 1, pickup_slot] = 0;
				pickup_slot = -1;
			}else{
				pickup_slot = -1;
			}
		}else{
			var ss_item_num = global.ds_inventory[# 1, selected_slot];
			global.ds_inventory[# 0, selected_slot] = global.ds_inventory[# 0, pickup_slot];
			global.ds_inventory[# 1, selected_slot] = global.ds_inventory[# 1, pickup_slot];
			
			global.ds_inventory[# 0, pickup_slot] = ss_item;
			global.ds_inventory[# 1, pickup_slot] = ss_item_num;
			
			pickup_slot = -1;	
		}
	}
}else if(ss_item != item.none){
	//drop item into room
	if(mouse_check_button_pressed(mb_middle)){
		global.ds_inventory[# 1, selected_slot] -= 1;
		
		//destroy item in inventory if it was the last one
		if(global.ds_inventory[# 1, selected_slot] == 0){
			global.ds_inventory[# 0, selected_slot] = item.none;
		}
		//create item
		var inst = instance_create_layer(obj_player.x,obj_player.y,"Instances", obj_item);
		with(inst){
			item_num = ss_item;
			xframe = item_num mod (spr_width/cellSize);
			yframe = item_num div (spr_width/cellSize);
		}
		show_debug_message("Dropped an item");
	}
	
	
	//drop pickupt item into new slot
	if(mouse_check_button_pressed(mb_left) && (nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height)){
		pickup_slot = selected_slot;
		global.ds_temp[# 0,0] = global.ds_inventory[# 0, selected_slot];
		global.ds_temp[# 1,0] = global.ds_inventory[# 1, selected_slot];
		global.mouseItem = selected_slot;

	}
}else if(global.ds_temp[# 0,0] != item.none && (nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height)){
	if(mouse_check_button_pressed(mb_left)){
		if(ss_item == item.none){
			global.ds_inventory[# 0, selected_slot] = global.ds_temp[# 0,0];
			global.ds_inventory[# 1, selected_slot] = global.ds_temp[# 1,0];
			global.ds_actionbar[# 0, global.mouseItem] = item.none;
			global.ds_actionbar[# 1, global.mouseItem] = 0;
			obj_actionbar.pickup_slot = -1;			
					
			global.ds_temp[# 0,0] = item.none;
			global.ds_temp[# 1,0] = 0;
			pickup_slot = -1;
		}
		
	}
}
