//@descritpion scr_itemdrop_slot(alot)
if(global.inventory[argument0] != -1){
	global.inventory[argument0] = -1;
	return(1);
}
return 0;