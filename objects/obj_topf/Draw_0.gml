/// @description Insert description here
// You can write your code in this editor
draw_self();
for(i = 0; i < maxItems_topf; i++){
	if(global.topf_inventory[i] != -1){
		draw_sprite(spr_items,global.topf_inventory[i],x + (30*i),y-20);
	}
}

draw_text(x-40, y-40, "capacity: " + string(capacity));

draw_text_transformed(200, 200, "topfzutat1: " + string(global.topf_inhalt[0]),1,1,0);
draw_text_transformed(200, 220, "topfzutat2: " + string(global.topf_inhalt[1]),1,1,0);
draw_text_transformed(200, 240, "equals: "  + string(getraenk),1,1,0);
draw_text_transformed(100, 140, "eimer: "  + string(global.eimer.capacity),1,1,0);


