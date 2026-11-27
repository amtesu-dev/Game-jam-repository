
var _mouse_grid = instance_position(mouse_x,mouse_y,obj_grid_old);


if (position_meeting(mouse_x,mouse_y,_mouse_grid) and _mouse_grid.tower == noone)
{
	
	if (_mouse_obj != noone  and mouse_check_button_pressed(mb_left))
	{
		var _inst = instance_create_depth(mouse_x,mouse_y,func_get_layer_depth(LAYER.ui),_mouse_obj)
		obj_shop_2.draw_tower = false;
		_mouse_grid.tower = _inst;
		global.points -= _mouse_obj.price;
		_mouse_obj = noone;
	}
	
	
	//if (_mouse_obj != noone and mouse_check_button_pressed(mb_left))
	//{
		
	//	with (obj_grid_old)
	//	{
	//		instance_change(obj_grid_hover._mouse_obj,true);
	//		MESSAGE
	//	}
	//	instance_create_layer(x,y,"lay_instances",_mouse_obj)
	//	instance_destroy(_mouse_grid)
		
	//}
	
	
	
}


	
	
	
