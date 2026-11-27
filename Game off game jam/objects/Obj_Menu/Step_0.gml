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
	if abs(camera_get_view_width(view_camera[0]) - mouse_x) < 200
	{
		MenuTgXOff = -1920
	}
	else if mouse_x < 200
	{
		MenuTgXOff = 1920
	}
	else
	{
		MenuTgXOff = 0
	}
	
	MenuXOff = lerp(MenuXOff, MenuTgXOff, 0.2)
}