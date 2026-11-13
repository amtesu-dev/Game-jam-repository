

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
