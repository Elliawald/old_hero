///@description instance create crop
///@arg x
///@arg y
///@arg crop_type

//create instance
var inst = instance_create_layer(argument0,argument1,"Instances",obj_crop);

with(inst){
	cropType = argument2;
	growthStageDuration = cropsManager.ds_crops_types[# 0, cropType];
	
}

return inst;