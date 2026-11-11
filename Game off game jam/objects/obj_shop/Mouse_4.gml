
var current_item = array_items[item]
//var price = prices


//if global.points >= c_item.price
//{
	
//}

if (item_asset == noone)
{
	c_item = instance_create_layer(mouse_x,mouse_y,layer_buy,current_item,{drag: true})

	if (not variable_instance_exists(c_item,"price") and array_length(prices) > item + 1 )
	// checks if the item already has a price or not and if the prices array has it's price within range
	{
		c_item.price = prices[item]
	}
	else 
	{
		c_item.price = 	def_price	// if not then the price is set to the default price (in variable diffinitions)
	}


	// sets the price and drag state of the item and creates it


}
else
{
	c_item = instance_create_layer(mouse_x,mouse_y,layer_buy,item_asset,{drag: true})
}

var item_price = c_item.price 


global.points -= item_price	// takes the item price from the points

if global.points <= 0	// if the points become less than or equal to 0 after a purchase, add the item's price to the points and destroy it
{
	global.points += item_price
	instance_destroy(c_item)
}