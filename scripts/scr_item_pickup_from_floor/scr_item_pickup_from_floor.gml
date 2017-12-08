for(i = 0; i < maxItems_bar; i++){
	if(global.inventory2[i] == -1) //if slot i is empty
	{
		global.inventory2[i] = argument0;
		return (1);
	}
}

scr_item_pickup(argument0);

return(0);



