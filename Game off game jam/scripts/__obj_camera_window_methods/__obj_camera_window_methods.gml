function __obj_camera_window_methods()
{
	mthd_calculate_max_window_scale = function()
	{
		var _max_h_scale = display_get_height() / BASE_H;
		var _max_w_scale = display_get_width() / BASE_W;


		if (frac(_max_h_scale) == 0)
		{
			_max_h_scale --;
		}


		return floor(min(_max_h_scale,_max_w_scale));
	}
	mthd_init_window = function ()
	{
		window_set_size(BASE_W * window_scale,BASE_H * window_scale);
		window_center();

		//surface_resize(application_surface,BASE_W,BASE_H);
		// pixel perfect resizing, makes all pixel perfectly aligned
		//surface_resize(APP_SURF,BASE_W * window_scale,BASE_H * window_scale);
		// more smooht one ,doesn't work (with me)
		//display_set_gui_size(BASE_W,BASE_H);
		
	}
}