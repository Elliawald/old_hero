//actionbar
draw_sprite_part_ext(spr_actionbar_UI,0, cellSize,0,inv_UI_width,inv_UI_height,inv_UI_x, inv_actionbar_y,scale,scale,c_white,1 );

//inventory
var ii,ix,iy,xx,yy, iitem, inv_grid, sx, sy;
ii = 0;
ix = 0;
iy = 0;
var c = c_black;

repeat(actionbar_slots){
	// x,y location for slot
	xx = actionbar_slots_x + ((cellSize+x_buffer)*ix*scale);
	yy = actionbar_slots_y + actionbar_y_buffer*scale;
	//item
	iitem = global.ds_actionbar[# 0, ii];
	
	sx = (iitem mod spr_inv_items_columns)*cellSize;
	sy = (iitem div spr_inv_items_columns)*cellSize;
	
	//draw slot and item
	draw_sprite_part_ext(spr_actionbar_UI,0,0,0,cellSize,cellSize,xx,yy,scale,scale,c_white,1);
	
	switch(ii){
		case selected_slot:
		if(iitem > 0){
			draw_sprite_part_ext(spr_inv_items,0,sx,sy,cellSize,cellSize,xx,yy,scale,scale,c_white,1);
		}
		gpu_set_blendmode(bm_add);
		draw_sprite_part_ext(spr_actionbar_UI,0,0,0,cellSize,cellSize,xx,yy,scale,scale,c_white,0.2);
		gpu_set_blendmode(bm_normal);
		break;
		
		case pickup_slot:
		if(iitem > 0){
			draw_sprite_part_ext(spr_inv_items,0,sx,sy,cellSize,cellSize,xx,yy,scale,scale,c_white,0.4);
		}
		break;
		
		default:
		if(iitem > 0){
			draw_sprite_part_ext(spr_inv_items,0,sx,sy,cellSize,cellSize,xx,yy,scale,scale,c_white,1);
		}
	}
	
	
	
	//draw number
	if(iitem > 0){
		var number = global.ds_actionbar[# 1, ii];
		draw_text_color(xx,yy,string(number),c,c,c,c,1);
	}
	
	
	
	ii ++;
	
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

if(pickup_slot != -1){
	//item
	iitem = global.ds_actionbar[# 0, pickup_slot];
	sx = (iitem mod spr_inv_items_columns)*cellSize;
	sy = (iitem div spr_inv_items_columns)*cellSize;
	draw_sprite_part_ext(spr_inv_items,0,sx,sy,cellSize,cellSize,mousex,mousey,scale,scale,c_white,1);

	var inum = global.ds_actionbar[# 1, pickup_slot];
	if(inum != 0)	
		draw_text_color(mousex+(cellSize*scale+0.5),mousey, string(inum), c,c,c,c,1);
}
draw_set_font(-1);