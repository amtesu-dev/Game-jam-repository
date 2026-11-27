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
		page = "title_up"
	}
}
else if page = "title_up"
{
	TitleYOff -= 250
	if TitleYOff < -1800
	{
		page = "main"
	}
}

if page = "main"
{
	MenuTgYOff = 0
	#region btn
	if !instance_exists(Obj_menu_Btn_start)
	{
		instance_create_depth(x, y, depth - 1, Obj_menu_Btn_start)
	}
	if !instance_exists(Obj_menu_Btn_exit)
	{
		instance_create_depth(x, y, depth - 1, Obj_menu_Btn_exit)
	}
	#endregion
	if canSwapMain
	{
		if MenuTgXOff = 0
		{
			if abs(camera_get_view_width(view_camera[0]) - mouse_x) < GoMargin
			{
				MenuTgXOff = -1920
			}
			else if mouse_x < GoMargin
			{
				MenuTgXOff = 1920
			}
		}
		else if MenuTgXOff = -1920
		{
			if mouse_x < GoMargin
			{
				MenuTgXOff = 0
				canSwapMain = false
			}
		}
		else if MenuTgXOff = 1920
		{
			if abs(camera_get_view_width(view_camera[0]) - mouse_x) < GoMargin
			{
				MenuTgXOff = 0
				canSwapMain = false
			}
		}
	}
	if mouse_x >= GoMargin && abs(camera_get_view_width(view_camera[0]) - mouse_x) >= GoMargin
	{
		canSwapMain = true
	}
	
	
}
else
{
	
	#region btn
	if instance_exists(Obj_menu_Btn_start)
	{
		instance_destroy(Obj_menu_Btn_start)
	}
	if instance_exists(Obj_menu_Btn_exit)
	{
		instance_destroy(Obj_menu_Btn_exit)
	}
	#endregion
}

if page = "LvSelect"
{
	MenuTgYOff = -1080
}






MenuXOff = lerp(MenuXOff, MenuTgXOff, 0.2)
MenuYOff = lerp(MenuYOff, MenuTgYOff, 0.2)