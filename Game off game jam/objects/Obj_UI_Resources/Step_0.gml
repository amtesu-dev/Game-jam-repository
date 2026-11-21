x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(sprite_index)
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(sprite_index)

if mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x + RepXOff, y + RepYOff, x + RepXOff + sprite_get_width(Spr_ResourceMgr_btn_repair),  y + RepYOff + sprite_get_height(Spr_ResourceMgr_btn_repair))
{
	global.points -= 50
	global.HarbourHp += 25
}