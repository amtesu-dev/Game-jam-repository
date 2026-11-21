
//__obj_camera_view_methods();
//__obj_camera_window_methods();

//window_scale = mthd_calculate_max_window_scale();
//mthd_init_window();

var _max_h_scale = display_get_height() / BASE_H;
var _max_w_scale = display_get_width() / BASE_W;


if (frac(_max_h_scale) == 0)
{
	_max_h_scale --;
}


window_scale = floor(min(_max_h_scale,_max_w_scale));

window_set_size(BASE_W * window_scale,BASE_H * window_scale);
window_center();

//surface_resize(application_surface,BASE_W,BASE_H);
// pixel perfect resizing, makes all pixel perfectly aligned
//surface_resize(APP_SURF,BASE_W * window_scale,BASE_H * window_scale);
// more smooht one ,doesn't work (with me)



zoom = {
	width: BASE_W,
	height: BASE_H,
	spd: 0.1,
	inc: 100,
	min_width: BASE_W / 4,
	max_width: BASE_W * 2,
	set: function (_width){
		width = clamp(_width,min_width,max_width)
		height = width / BASE_ASPECT
	},
	change: function(){
		var _zoom = mouse_wheel_down() - mouse_wheel_up();
		set(width + _zoom * inc)
	},
	apply: function() {
		var _center_x = VIEW_CENTER_X;
		var _center_y = VIEW_CENTER_Y;
		camera_set_view_size(VIEW,lerp(VIEW_W,width,spd), lerp(VIEW_H,height,spd));
		camera_set_view_pos(VIEW, _center_x - VIEW_CENTER_X / 2, _center_y - VIEW_CENTER_Y / 2);
	}
	
};


room_goto_next();