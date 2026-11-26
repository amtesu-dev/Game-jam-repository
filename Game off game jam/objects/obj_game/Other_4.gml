

ex_code_room_start();


array_foreach(arr_rm_start_objects,function(_obj)
{
	if (not instance_exists(_obj))
	{
		instance_create_depth(0,0,layer_game,_obj);
	}
	show_debug_message(string(instance_number(_obj)) + string(_obj))

})

