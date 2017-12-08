for(i = 0; i < maxItems; i++){
	if(global.inventory2[i] == argument0) //if slot i contains the item
	{
		global.inventory2[i] = -1;
		return (1);
	}
}
return(0);



