/// @description Insert description here
temp = 0;
oldtemp = 0;
cell_x = 1;
cell_y = 2;
lay_id = layer_get_id("T_Soil");
map_id = layer_tilemap_get_id(lay_id);
data = tilemap_get(map_id, cell_x, cell_y);

pflug_down = false;

cs = cropsManager.cellSize;

