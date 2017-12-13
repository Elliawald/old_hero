// inventory 
if(!show_inventory){
	exit;
}

draw_sprite_part_ext(spr_inv_UI,0, cellSize,0,inv_UI_width,inv_UI_height,inv_UI_x, inv_UI_y,scale,scale,c_white,1 );

//Player Info
var info_grid = ds_player_info;
draw_set_font(fnt_text_24);
var c = c_black;
draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c, c, c, c, 1);

draw_set_font(fnt_text_14);
var yy = 0; 
repeat(3){
	draw_text_color(info_x + (192 * scale) + ((15+18) * scale * yy),info_y,string(info_grid[# 1, yy]),c,c,c,c,1);
	yy++;
}

//inventory
var ii,ix,iy,xx,xy, iitem, inv_grid, sx, sy;
ii = 0;
ix = 0;
iy = 0;
inv_grid = ds_inventory;

repeat(inv_slots){
	// x,y location for slot
	xx = slots_x + ((cellSize+x_buffer)*ix*scale);
	yy = slots_y + ((cellSize+y_buffer)*iy*scale);
	//item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns)* cellSize;
	sy = (iitem div spr_inv_items_columns)* cellSize;
	
	//draw slot and item
	draw_sprite_part_ext(spr_inv_UI,0,0,0,cellSize,cellSize,xx,yy,scale,scale,c_white,1);
	if(item > 0){
		draw_sprite_part_ext(spr_inv_items,0,sx,sy,cellSize,cellSize,xx,yy,scale,scale,c_white,1);
	}
	
	
	//draw number
	if(item > 0){
		var number = inv_grid[# 1, ii];
		draw_text_color(xx,yy,string(number),c,c,c,c,1);
	}
	
	
	
	ii ++;
	
	ix = ii mod inv_slots_width;
	iy = ii mod inv_slots_width;
}