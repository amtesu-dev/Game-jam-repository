


if (global.points < item_price)
{
	
	state = ST_SHOP.CANNOT_SELL;
	
}
else 
{
	
	state = ST_SHOP.CAN_SELL;
	
}


switch (state)
{
	case ST_SHOP.CAN_SELL:
		
		can_buy = true;
		
	break;
	
	case ST_SHOP.CANNOT_SELL:
		
		can_buy = false;
		
	break;
	
	case ST_SHOP.SOLD_OUT:
		
		can_buy = false;
		
	break;
	
	case ST_SHOP.CLOSED:
		
		can_buy = false;
		
	break;
	
}

//if (variable_instance_exists(item,"price"))
//{
	
//	//variable_instance_set(self,"item_price",item.price);
//	item_price = item.price;
//}

//if (variable_instance_exists(item,"name"))
//{
//	//variable_instance_set(self,"item_name",item.name);
//	item_name = item.name;
//}
