//scr_global_variables
global.right = 0;
global.up = 1;
global.left = 2;
global.down = 3;
global.layer_objects = layer_create(0);
global.gameWidth = 750;
global.gameHeight = 420;
global.zoom = 2;
global.attackblock = 0;
global.topf_inhalt = array_create(20, 0);
global.list = ds_list_create();
global.rezept_bier = ds_list_create();
var bier = array_create(20, 0);
bier[0] = 3;
bier[1] = 2;

var wein = array_create(20, 0);
wein[1] = 4;
wein[2] = 1;

var hopfihopf = array_create(20, 0);
hopfihopf[1] = 5;

global.getraenke_rezepte[0] = hopfihopf;  
global.getraenke_rezepte[1] = wein; 
global.getraenke_rezepte[2] = bier;

global.eimer = instance_create_layer(obj_player.x, obj_player.y, 0, obj_eimer);
global.pflug_state = 0;

global.farm_tiles = ds_grid_create(36, 20);
global.plow_active = 1;
global.temp = 0;
global.old_temp = 0;