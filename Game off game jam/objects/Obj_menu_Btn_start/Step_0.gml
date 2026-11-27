if point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
{
	image_alpha = 0.8
	if mouse_check_button_pressed(mb_left)
	{
		Obj_Menu.page = "LvSelect"
	}
}
else image_alpha = 1

x = Obj_Menu.MenuXOff + 0.5*camera_get_view_width(view_camera[0])
y = 450 + Obj_Menu.MenuYOff