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


var i, j;
i = 0;
j = 0;
repeat (ds_grid_width(global.farm_tiles))
   {
   repeat (ds_grid_height(global.farm_tiles))
      {
      ds_grid_set(global.farm_tiles, i, j, 1);
      j += 1;
      }
   j = 0;
   i += 1;
}

var i, j;
i = 0;
j = 0;
for (i = 0; i < ds_grid_width(global.farm_tiles); i += 1)
   {
   for (j = 0; j < ds_grid_height(global.farm_tiles); j += 1)
      {
      if ds_grid_get(global.farm_tiles, i, j) = 1
         {
		 room_instance_add(rm_farm,i*16,j*16,obj_farming_tile);
         }
      }
   }
