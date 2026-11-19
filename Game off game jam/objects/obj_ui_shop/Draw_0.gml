


if (_can_draw)
{
	var _x_start_arr = _array_current_items[_arr_first]
	var _x_end_arr = _array_current_items[_arr_last]
	
	var _x_start = variable_instance_get(_x_start_arr,"x")
	var _x_end = variable_instance_get(_x_end_arr,"x")
	
	if (_x_start != undefined) draw_sprite(spr_shop_ui,-1,_x_start,VIEW_B)
	if (_x_end != undefined) draw_sprite(spr_shop_ui,-1,_x_end,VIEW_B)


}

