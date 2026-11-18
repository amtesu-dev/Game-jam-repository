




base_w = 1980;
base_h = 1080;


var _max_h_scale = display_get_height() / base_h;
var _max_w_scale = display_get_width() / base_w;


if (frac(_max_h_scale) == 0)
{
	_max_h_scale --;
}

window_scale = floor(min(_max_h_scale,_max_w_scale));

window_set_size(base_w * window_scale,base_h * window_scale);
window_center();

//surface_resize(application_surface,base_w,base_h)
// pixel perfect resizing, makes all pixel perfectly aligned
//surface_resize(application_surface,base_w * window_scale,base_h * window_scale)
// more smooht one ,doesn't work (with me)


room_goto(rm_2)