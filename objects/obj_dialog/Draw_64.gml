/// @description initialize dialog
event_inherited();
text_count += spd;
var view =camera_create_view(x, y,sprite_width,sprite_height,0,0,0,0,0,0);
text_visible = string_copy(text[text_page], 0, text_count);
var xx = (x-view_xport[0])*display_scale;
var yy = (x-view_yport[0])*display_scale;
//draw_text_ext(xx, yy, "blub", 0, (sprite_width));