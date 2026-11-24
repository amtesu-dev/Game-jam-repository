
draw_tower = false;
_shop_slot = undefined;
_item_bought = noone;
_item_is_selected = false;


//_price = variable_instance_get(item,"price")
//_name = variable_instance_get(item,"tower_name");

#region methods
mthd_set_vars = function()
{
	switch(item)
	{
		case obj_tower_cannon:
			item_name = "cannon";
			item_price = 10;
		break;
		
		case obj_tower_2:
			item_name = "tower 2";
			item_price = 20
		break;
		
		case noone:
			item_name = "empty";
			item_price = 0
		break;
	}
}
mthd_buy = function()
{
	
	var _inst = instance_create_layer(mouse_x,mouse_y,creation_layer,item,{drag: true})
	global.points -= item_price;
	//with instance_create_layer(x, y, creation_layer, obj_tower_buy)
	//{
	//	type = other.item
	//	price = other.item_price
	//	creation_layer = other.creation_layer
	//}
	
}
cond_item_exists = function()
{
	return (item != noone)
}
#endregion


mthd_set_vars();






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







