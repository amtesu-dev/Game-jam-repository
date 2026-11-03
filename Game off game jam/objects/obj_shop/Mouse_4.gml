
var current_item = array_items[item]
var price = array_items[item].price

if global.points >= price
{
	instance_create_layer(mouse_x,mouse_y,"lay_instances",current_item,{drag: true})
	global.points -= price
}