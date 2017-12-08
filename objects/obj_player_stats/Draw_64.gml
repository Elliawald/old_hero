/// @description sraw stats
draw_set_color(c_white);
draw_text_transformed(16, 32, "HP: " + string(hp) + "/" + string(maxhp),0.5,0.5,0);
draw_text_transformed(16, 48, "STAMINA: " + string(stamina) + "/" + string(maxstamina),0.5,0.5,0);
draw_text_transformed(16, 54, "LEVEL: " + string(level),0.5,0.5,0);
draw_text_transformed(16, 70, "FPS: " + string(global.active_slot),0.5,0.5,0);

var fass1 = instance_find(obj_fass,0);
var fass2 = instance_find(obj_fass,1);
var topf = instance_find(obj_topf,0);
if(fass1){
	draw_text_transformed(20, 60, "FASS: " + string(fass1.max_capacity) + "/" + string(fass1.capacity) + string(fass1.getraenk),0.5,0.5,0);
	draw_text_transformed(20, 80, "FASS2: " + string(fass2.max_capacity) + "/" + string(fass2.capacity) + string(fass2.getraenk),0.5,0.5,0);
}
if(topf){
	//draw_text_transformed(20, 60, "topf: " + string(topf.max_capacity) + "/" + string(topf.capacity),0.5,0.5,0);
}


    
