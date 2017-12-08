for(i = 0; i < obj_topf.maxItems_topf; i++){
	if(global.topf_inventory[i] == -1) //if slot i is empty
	{
		global.topf_inventory[i] = argument0;
		global.topf_inhalt[argument0]++;
		scr_itemdrop_slot_actionbar(global.active_slot);
		obj_topf.cur_items_topf++;
		return (1);
	}
}
return(0);



