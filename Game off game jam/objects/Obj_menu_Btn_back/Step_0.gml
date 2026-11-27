if point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
{
	image_alpha = 0.8
	if mouse_check_button_pressed(mb_left)
	{
		Obj_Menu.page = "main"
	}
}
else image_alpha = 1

x = 0
y = 1080 + Obj_Menu.MenuYOff