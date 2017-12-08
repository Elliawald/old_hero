/// @description Insert description here
// You can write your code in this editor
random_set_seed(date_current_datetime());

for(i = 0;i<10;i++){
	randomize();
	x_coord = irandom(room_width-26);
	y_coord = irandom(room_height-26);
	if(!instance_place(x_coord, y_coord, obj_item)){
		instance_create_layer(x_coord,y_coord,0,obj_item);
	}
}



