

_shop_slot = undefined;
_item_bought = noone


_price = variable_instance_get(item,"price")
_name = variable_instance_get(item,"tower_name");

mthd_set_name = function()
{
	if (_name != undefined)
	{
		item_name = _name;
	}
	else item_name = "item"
}
mthd_set_price = function()
{
	if (_price != undefined)
	{
		item_price = _price;
	}
	else item_price = 1;
}

mthd_set_name();
mthd_set_price();
cond_item_exists = function()
{
	return (item != noone)
}
mthd_buy = function()
{
	
	var _inst = instance_create_layer(mouse_x,mouse_y,creation_layer,item,{drag: true})
	
	
	//with instance_create_layer(x, y, creation_layer, obj_tower_buy)
	//{
	//	type = other.item
	//	price = other.item_price
	//	creation_layer = other.creation_layer
	//}
	
}




//_mouse_pressed = mouse_check_button_pressed(mb_left);
//cond_mouse_hover = function()
//{
//	collision_point(mouse_x,mouse_y,self,false,false);
//}

enum ST_SHOP
{
	CAN_SELL,
	CANNOT_SELL,
	SOLD_OUT,
	CLOSED
}


state = ST_SHOP.CAN_SELL;







