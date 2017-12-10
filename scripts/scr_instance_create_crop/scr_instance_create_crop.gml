///@description instance create crop
///@arg x
///@arg y
///@arg crop_type

var cs = cropsManager.cellSize;
var gx = argument0 div cs;
var gy = argument1 div cs;
var i_grid = cropsManager.ds_crops_instances;
var cell = i_grid[# gx, gy];

if(cell == 0){

	var xx = gx*cs;
	var yy = gy*cs;

	//check for soil
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, argument0, argument1);

	if(data == 0){
		show_debug_message("there is no soil here");
		return false;
	}else{
		show_debug_message("there is soil here");
	}


	//create instance
	var inst = instance_create_layer(xx+(cs/2),yy+(cs/2),"Instances",obj_crop);
	i_grid[# gx, gy] = inst;


	with(inst){
		cropType = argument2;
		growthStageDuration = cropsManager.ds_crops_types[# 0, cropType];
	
	}

	return inst;
}else{
	show_debug_message("there is already something there");
	return false;
}