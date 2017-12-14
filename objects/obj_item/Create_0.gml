/// @description Insert description here
// You can write your code in this editor
ItemID = 0;
//items die auf dem boden spawnen
randomize();
ItemID = irandom(image_number-1);

image_index = ItemID;
image_speed = 0;


cellSize = 32;
item_spr = spr_inventory_items;
spr_width = sprite_get_width(item_spr);
spr_height = sprite_get_height(item_spr);

item_num = -1;

xframe = 0;
yframe = 0;
x_offset = cellSize/2;
y_offset = cellSize*(2/3);

drop_move = true;
var itemdir = irandom_range(0,259);
var len = 32;
goal_x = x + lengthdir_x(len, itemdir);
goal_y = y + lengthdir_y(len, itemdir);
