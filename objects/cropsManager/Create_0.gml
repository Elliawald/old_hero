/// @description Insert description here
// You can write your code in this editor
ds_crops_types	=	-1;
ds_crops_instances = -1;
ds_crops_data = ds_grid_create(4,1);
ds_grid_clear(ds_crops_data, -1);
enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chilli,
	gourd,
	corn
}

scr_create_crop_type(4,40, "tomato"); //tomato
scr_create_crop_type(3,35, "potato"); //potato
scr_create_crop_type(2,25, "carrot"); //carrot
scr_create_crop_type(4,45, "artichoke"); //artichoke
scr_create_crop_type(3,30, "chilli"); //chilli
scr_create_crop_type(2,20, "gourd"); //gourd
scr_create_crop_type(5,50, "corn"); //corn

planting = false;
selectCrop = 0;

mx = 0;
my = 0;
cellSize = 32;