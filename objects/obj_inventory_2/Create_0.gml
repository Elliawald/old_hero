/// @description Insert description here
// You can write your code in this editor
depth = -1;
scale = 2;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

show_inventory = false;
actionbar_active = true;
inv_slots =12;
actionbar_slots = 8;
inv_slots_width = 8;
inv_slots_height = 3;


selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 2;
y_buffer = 4;

actionbar_y_buffer = 5;

cellSize = 32;

spr_inv_UI = spr_inventory_ui;
spr_actionbar_UI = spr_actionbar;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cellSize;
spr_inv_items_rows = sprite_get_width(spr_inv_items)/cellSize;

inv_UI_width = (sprite_get_width(spr_inventory_ui) - cellSize);
inv_UI_height = sprite_get_height(spr_inventory_ui);

inv_actionbar_height = sprite_get_height(spr_actionbar_UI);

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 *scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 *scale);

inv_actionbar_x = (gui_width * 0.5) - (inv_UI_width * 0.5 *scale);
inv_actionbar_y = (gui_height) - (inv_actionbar_height*scale);

info_x = inv_UI_x + 9 * scale;
info_y = inv_UI_y + 9 * scale;

actionbar_info_x = inv_actionbar_x + 9 * scale;
actionbar_info_y = inv_actionbar_y;

slots_x = info_x;
slots_y = info_y + (30 * scale);

actionbar_slots_x = actionbar_info_x;
actionbar_slots_y = actionbar_info_y + (0.5 );

//Player info
//0 Gold
//1 Silver
//3 Name

ds_player_info = ds_grid_create(2,4);

ds_player_info[# 0, 0] = "Gold";
ds_player_info[# 0, 1] = "Silver";
ds_player_info[# 0, 2] = "Copper";
ds_player_info[# 0, 3] = "Name";

ds_player_info[# 1, 0] = irandom_range(0,99);
ds_player_info[# 1, 1] = irandom_range(0,99);
ds_player_info[# 1, 2] = irandom_range(0,99);
ds_player_info[# 1, 3] = "Elliawald";

// Inventory
//0 Item
//1 Number

global.ds_inventory = ds_grid_create(2, inv_slots);

//items 

enum item{
	none		= 0,
	tomato		= 1,
	potato		= 2,
	carrot		= 3,
	artichoke	= 4,
	chilli		= 5,
	gourd		= 6,
	corn		= 7,
	wood		= 8,
	stone		= 9,
	bucket		= 10,
	chair		= 11,
	picture		= 12,
	axe			= 13,
	potion		= 14,
	starfish	= 15,
	mushroom	= 16,
	height		= 17,
}

var yy = 0;
repeat(inv_slots){
	global.ds_inventory[# 0, yy] = irandom_range(1, item.height -1);
	global.ds_inventory[# 1, yy] = irandom_range(1,10);
	yy++;
}