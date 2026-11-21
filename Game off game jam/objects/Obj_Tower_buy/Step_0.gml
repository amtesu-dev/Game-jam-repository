sprite_index = object_get_sprite(type)
x = mouse_x
y = mouse_y

if mouse_check_button_pressed(mb_left)
{
	if !place_meeting(x, y, obj_shop_2)
	{
		global.points -= price
		with instance_create_layer(x,y,creation_layer,type)
		{
			drag = false
		}
	}
	instance_destroy()
}