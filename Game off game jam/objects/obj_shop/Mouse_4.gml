
var current_item = array_items[item]
//var price = prices
var item_price = c_item.price 


//if global.points >= c_item.price
//{
	
//}

c_item = instance_create_layer(mouse_x,mouse_y,"lay_instances",current_item,{drag: true,price:prices[item]})
// sets the price and drag state of the item and creates it

global.points -= item_price	// takes the item price from the points

if global.points <= 0	// if the points become less than or equal to 0 after a purchase, add the item's price to the points and destroy it
{
	global.points += item_price
	instance_destroy(c_item)
	
}
