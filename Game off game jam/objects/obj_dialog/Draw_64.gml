var dx = 0;
var dy = gui_h * 0.7;
var box_w = gui_w
var box_h = gui_h - dy;

draw_sprite_stretched(spr_settings_panel,0,dx,dy,box_w,box_h);

dx += 16;
dy += 16;


draw_set_font(Font1);

var _name = messages[current_message].name;
draw_text(dx,dy,_name);

dy += 40;
draw_text_ext(dx,dy,draw_message,-1,box_w - dx * 2);
