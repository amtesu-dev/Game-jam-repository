

ex_code_room_start();


array_foreach(arr_rm_start_objects,function(_obj)
{
	if (not instance_exists(_obj))
	{
		instance_create_depth(0,0,depth,_obj);
	}
	show_debug_message(string(instance_number(_obj)) + string(_obj))

})

//show_debug_message(string(instance_number(obj_ui_shop)))
// layers
//instance_create_depth(0,0,depth,obj_init)


//// dragging
//instance_create_depth(0,0,depth,obj_drag_manager)


//// ui

//instance_create_depth(0,0,depth,obj_ui);

//instance_create_depth(0,0,depth,obj_ui_shop);
//instance_create_depth(0,0,depth,Obj_Cam);