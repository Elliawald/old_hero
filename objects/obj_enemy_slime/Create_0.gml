/// @description initialize the slime
// You can write your code in this editor
event_inherited();
image_speed = 0.1;
spd = 1;
state = scr_enemy_idle_state;
alarm[0] = room_speed * irandom_range(2, 5);
sight = 64;
targetx = 0;
targety = 0;