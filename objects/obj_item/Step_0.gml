/// @description Insert description here
// You can write your code in this editor
if(drop_move){
	x = lerp(x,goal_x, 0.1);
	y = lerp(y,goal_y, 0.1);
	if(abs(x - goal_x < 1) and abs(y - goal_y) < 1){
		drop_move = false;
	}
}else{
	if(!keyboard_check(ord("O"))){
		exit;
	}
	var px = obj_player.x;
	var py = obj_player.y;
	var r = 32;
	if(point_in_rectangle(px, py, x-r, y-r ,x+r, y+r)){
		r = 2;
		if(!point_in_rectangle(px,py, x-r, y-r,x-r,y+r)){
			x = lerp(x,px, 0.1);
			y = lerp(y,py, 0.1);
		}else{
			var in = item_num;
			
			with(inventory){
				var ds_inv = ds_inventory;
				var picked_up = false;
				//check if item exists in inventory
				var yy = 0;
				repeat(inv_slots){
					if(ds_inv[# 0, yy] == in){
						ds_inv[# 1, yy]++;
						picked_up = true;
						break;
					}else{
						yy++;
					}
				}			
				//otherwise add to empty
				if(!picked_up){
					yy = 0;
					repeat(inv_slots){
						if(ds_inv[# 0, yy] == item.none){
							ds_inv[# 1, yy] = in;
							ds_inv[# 1, yy]++;
							picked_up = true;
							break;
						}else{
							yy++;
						}
					}	
				}
			}
			
			if(picked_up){
					instance_destroy();
					show_debug_message("picked up item");
			}
		}
	}
}
