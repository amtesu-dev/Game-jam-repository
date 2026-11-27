if keyboard_check(vk_control) && keyboard_check_pressed(ord("H"))
{
	show_debug_overlay(!is_debug_overlay_open())
}
//if keyboard_check_pressed(vk_shift)
//{
//	camPosId++
//	if camPosId >= array_length(CamPosArr)
//	{
//		camPosId = 0
//	}
//	Obj_Cam.TgX = CamPosArr[camPosId][0]
//	Obj_Cam.TgY = CamPosArr[camPosId][1]
//}



//update the dragging process
if (not update_drag)
{
	if (instance_exists(obj_drag_manager)) instance_destroy(obj_drag_manager);
}
else
{
	if (not instance_exists(obj_drag_manager)) instance_create_depth(0,0,depth,obj_drag_manager);
}

#region dev tools

if keyboard_check_pressed(ord("R"))
{
	room_restart();
}

if keyboard_check_pressed(vk_escape)
{
	game_restart()
}

if keyboard_check_pressed(ord("N")) and room_next(room) != -1
{
	room_goto_next()
}

if keyboard_check_pressed(ord("P")) and room_previous(room) != -1
{
	room_goto_previous()
}

#endregion

ex_code_step();
