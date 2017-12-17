depth = -1;
scale = 2;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

show_inventory = false;

actionbar_slots =8;
actionbar_slots = 8;
inv_slots_width = 8;
inv_slots_height = 1;


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






var yy = 0;
repeat(actionbar_slots){
	global.ds_actionbar[# 0, yy] = irandom_range(1, item.height -1);
	global.ds_actionbar[# 1, yy] = irandom_range(1,10);
	yy++;
}