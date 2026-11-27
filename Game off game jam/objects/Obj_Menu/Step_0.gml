if page = "title"
{
	if keyboard_check_pressed(vk_anykey)
	{
		page = "title_down"
	}

	TitleYOff = 0
}
else if page = "title_down"
{
	TitleYOff = lerp(TitleYOff, MaxDownTitleYOff, 0.2)
	if round(TitleYOff/10)*10 = round(MaxDownTitleYOff/10)*10
	{
		page = "main"
	}
}
else
{
	TitleYOff -= 250
}

if page = "main"
{
	if canSwapMain
	{
		if MenuTgXOff = 0
		{
			if abs(camera_get_view_width(view_camera[0]) - mouse_x) < 200
			{
				MenuTgXOff = -1920
			}
			else if mouse_x < 200
			{
				MenuTgXOff = 1920
			}
		}
		else if MenuTgXOff = -1920
		{
			if mouse_x < 200
			{
				MenuTgXOff = 0
				canSwapMain = false
			}
		}
		else if MenuTgXOff = 1920
		{
			if abs(camera_get_view_width(view_camera[0]) - mouse_x) < 200
			{
				MenuTgXOff = 0
				canSwapMain = false
			}
		}
	}
	if mouse_x >= 200 && abs(camera_get_view_width(view_camera[0]) - mouse_x) >= 200
	{
		canSwapMain = true
	}
	
	MenuXOff = lerp(MenuXOff, MenuTgXOff, 0.2)
}