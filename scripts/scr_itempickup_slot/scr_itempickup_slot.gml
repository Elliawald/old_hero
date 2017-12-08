//@descritpion scr_itempickup_slot(item,alot)
if(global.inventory[argument1] == -1){
	global.inventory[argument1] = argument0;
	return(1);
}
return 0;
