/// @description Insert description here
// You can write your code in this editor
seconds  = 0;
minutes  = 0;
hours  = 0;

day  = 1;
season = 1;
year = 1;

time_increment = 80; // 1/60
time_pause = true; 
darkness = 0;
max_darkness = 0.7;


light_color = c_black;
draw_daylight = false;

guiwidth = display_get_width();
guiheight = display_get_height();

enum phase {
	sunrise = 6,
	daytime = 8.5,
	sunset = 18,
	nighttime = 22,
}