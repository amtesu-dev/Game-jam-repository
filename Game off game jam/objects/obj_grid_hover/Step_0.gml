
var _mouse_grid = instance_position(mouse_x,mouse_y,obj_grid);


if position_meeting(mouse_x,mouse_y,_mouse_grid)
{
	DEBUG_MESSAGE
	//if (_mouse_obj != noone and mouse_check_button_pressed(mb_left))
	//{
		
	//	with (obj_grid)
	//	{
	//		instance_change(obj_grid_hover._mouse_obj,true);
			
	//	}
	//	instance_create_layer(x,y,"lay_instances",_mouse_obj)
	//	instance_destroy(_mouse_grid)
		
	//}
	//if (_mouse_obj != noone and mouse_check_button_pressed(mb_left))
	//{
	//	instance_create_layer(mouse_x,mouse_y,"lay_instances",_mouse_obj)
	//}

}

if (_mouse_obj != noone and mouse_check_button_pressed(mb_left))
{
	var _inst = instance_create_layer(mouse_x,mouse_y,"lay_instances",_mouse_obj);
	global.points -= _inst.price
	obj_shop_2.draw_tower = false;
	_mouse_obj = noone;
}