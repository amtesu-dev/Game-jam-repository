

if global.points >= 30
{
	instance_create_layer(mouse_x,mouse_y,"instances",obj_cannon,{drag: true})
	global.points -= 30
}