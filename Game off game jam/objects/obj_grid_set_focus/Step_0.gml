
var tile = instance_position(mouse_x,mouse_y,obj_grid)


if (tile == noone)
{
	func_set_focus(tile);
	show_debug_message(string(tile))
}
else
{
	func_clear_focus();
	show_debug_message(string(tile) + "ISN'T REAAAAAAAAAL" )

}