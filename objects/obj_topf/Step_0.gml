/// @description Insert description here
// You can write your code in this editor

if(cur_items_topf == maxItems_topf){
	getraenk = scr_getraenk_mapping();
	for(i = 0; i < maxItems_topf; i++){
		global.topf_inventory[i] = -1; 	
	}
	capacity = max_capacity;
	cur_items_topf = 0;	
	global.topf_inhalt = array_create(20, 0);
}
