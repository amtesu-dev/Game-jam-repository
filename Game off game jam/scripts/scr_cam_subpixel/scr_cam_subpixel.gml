///@func func_camera_set_view_subpixel(cam,x,y)
function func_camera_set_view_subpixel(_cam,_x,_y)
{
	var _surf_w = surface_get_width(application_surface),
	_view_w = camera_get_view_width(_cam),
	_ratio = _view_w / _surf_w;
	
	_x = round(_x / _ratio) * _ratio
	_y = round(_y / _ratio) * _ratio
	
	camera_set_view_pos(_cam,_x,_y)
}
// function meant to fix future pixel distortion related issues, just keeping it here incase. -Hastiry
// note: this is meant to be used with the obj_init