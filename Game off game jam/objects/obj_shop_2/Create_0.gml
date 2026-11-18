
_item_bought = noone

var_struct = {
	drag: true
}





cond_item_exists = function()
{
	return (item != noone)	
}
mthd_buy = function()
{
	if (variable_instance_exists(item,"price"))
	{
		variable_instance_set(self,"item_price",item.price);
		//item_price = item.price;
	}
	_item_bought = instance_create_layer(x,y,creation_layer,item,var_struct)
	global.points -= item_price;
	
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







