/// @description create experience
var expr_orbs = random_range(1,5);
var drop_layer = layer_create(0);
for (var i = 0; i <= expr_orbs; i += 1)
   {
		
		instance_create_layer(x+i*2, y+i*2, drop_layer, obj_expr);
   }
   
 //drop a healthpack
 if(scr_chance(0.5)){
		instance_create_layer(x+random_range(-4, 4), y+random_range(-4, 4), drop_layer, obj_health);
 }  
