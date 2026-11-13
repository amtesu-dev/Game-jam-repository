

var _max_h_scale = display_get_height() / BASE_H;
var _max_w_scale = display_get_width() / BASE_W;


if (frac(_max_h_scale) == 0)
{
	_max_h_scale --;
}

window_scale = floor(min(_max_h_scale,_max_w_scale));

window_set_size(BASE_W * window_scale,BASE_H * window_scale);
window_center();

//surface_resize(application_surface,BASE_W,BASE_H)
// pixel perfect resizing, makes all pixel perfectly aligned
//surface_resize(application_surface,BASE_W * window_scale,BASE_H * window_scale)
// more smooht one ,doesn't work (with me)


room_goto_next();