/// @description 
/* 
Inventory Items
0 = apple
1 = banana
2 = hopfen
*/
globalvar showBar; //display the inventory?
showBar = true;
globalvar maxItems_bar; //total item slots
maxItems_bar = 8;

global.active_slot = 0;
depth = -1000;

for(i = 0; i < maxItems_bar; i++){
	global.inventory2[i] = -1;
	button[i] = instance_create_layer(0,0,0,obj_invbutton_actionbar);
	button[i].slot = i;
}




//scr_item_drop(1);	// remove item