/// @description 
/* 
Inventory Items
0 = apple
1 = banana
2 = hopfen
*/
globalvar showInv; //display the inventory?
showInv = false;
globalvar maxItems; //total item slots
maxItems = 8;
depth = -1000;

for(i = 0; i < maxItems; i++){
	global.inventory[i] = -1;
	button[i] = instance_create_layer(0,0,0,obj_invbutton);
	button[i].slot = i;
}
globalvar mouseItem;
mouseItem = -1;
instance_create_layer(0,0,0,obj_mouse_item);

scr_item_pickup(0); // add item
/*scr_item_pickup(1);
scr_item_pickup(1);
scr_item_pickup(0);
scr_item_pickup(0);
scr_item_pickup(0);
scr_item_pickup(2);
scr_item_pickup(3);*/
//scr_item_drop(1);	// remove item