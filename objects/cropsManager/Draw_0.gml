/// @description Insert description here
// You can write your code in this editor
if(!planting) exit;


var cs = cellSize;
var gx = (mx div cs);
var gy = (my div cs);

xx = gx * cs;
yy = gy * cs;

var c = c_red;
//what is in the cell?
var cell = cropsManager.ds_crops_instances[# gx, gy];

if(cell == 0){
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, mx, my);

	if(data != 0){
		c = c_lime;
	}
}



draw_rectangle_color(xx+1, yy+1, xx+cs-1, yy+cs-1, c, c, c, c, true);


//draw crop planting

draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));