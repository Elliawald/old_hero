/// @description Insert description here
// You can write your code in this editor
depth = -1;
scale = 2;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

cellSize = 32;

spr_inv_UI = spr_inventory_ui;
inv_UI_width = (sprite_get_width(spr_inventory_ui) - cellSize);
inv_UI_height = sprite_get_height(spr_inventory_ui);

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 *scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 *scale);
