
if keyboard_check_pressed(vk_space) target_is_pos = !target_is_pos

if target_is_pos
{
	if keyboard_check(vk_down) _y += 5
	if keyboard_check(vk_up) _y -= 5
	if keyboard_check(vk_right) _x += 5
	if keyboard_check(vk_left) _x -= 5
}

//zoom.change();