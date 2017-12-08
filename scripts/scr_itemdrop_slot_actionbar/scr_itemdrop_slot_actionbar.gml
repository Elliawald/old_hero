//@descritpion scr_itemdrop_slot(alot)
if(global.inventory2[argument0] != -1){
	global.inventory2[argument0] = -1;
	return(1);
}
return 0;