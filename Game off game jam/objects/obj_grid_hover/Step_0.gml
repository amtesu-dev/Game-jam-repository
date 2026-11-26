
var _mouse_grid = instance_position(mouse_x,mouse_y,obj_grid);


if position_meeting(mouse_x,mouse_y,_mouse_grid)
{
	DEBUG_MESSAGE
	if (_mouse_obj != noone and mouse_check_button_pressed(mb_left))
	{
		
		with (obj_grid_old)
		{
			instance_change(obj_grid_hover._mouse_obj,true);
			MESSAGE
		}
		instance_create_layer(x,y,"lay_instances",_mouse_obj)
		instance_destroy(_mouse_grid)
		
	}
	
	
	
}