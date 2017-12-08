/// @description Insert description here
// You can write your code in this editor
ds_crops_types	=	0;

enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chilli,
	gourd,
	corn
}

scr_create_crop_type(4,40); //tomato
scr_create_crop_type(3,35); //potato
scr_create_crop_type(2,25); //carrot
scr_create_crop_type(4,45); //artichoke
scr_create_crop_type(3,30); //chilli
scr_create_crop_type(2,20); //gourd
scr_create_crop_type(5,50); //corn

planting = false;
selectCrop = 0;

mx = 0;
my = 0;
cellSize = 32;