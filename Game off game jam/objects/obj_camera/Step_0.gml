
if keyboard_check_pressed(vk_space) target_is_pos = !target_is_pos

if target_is_pos
{
	if keyboard_check(vk_down) _y += 5
	if keyboard_check(vk_up) _y -= 5
	if keyboard_check(vk_right) _x += 5
	if keyboard_check(vk_left) _x -= 5
}



if keyboard_check_pressed(vk_shift)
{
	//if (camera_target != noone) camera_target.can_move = false;

	order ++;
	if (order == array_length(global.array_ships)) order = 0;
	
	
	if (global.array_ships[order] != undefined) 
	{
		camera_target = global.array_ships[order]
		//camera_target.can_move = true;
	}
}
//zoom.change();