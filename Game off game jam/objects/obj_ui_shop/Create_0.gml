
#region commented code, it's already put in a function (used bellow) though i'll just keep it like this for now

//var _spr_w = sprite_get_width(spr_shop_placeholder),
//_spr_h = sprite_get_height(spr_shop_placeholder),
//_gap = _spr_w / 2,
//_y_ancor = VIEW_H + _spr_h + 20,
//_x_ancor = VIEW_X;

//var _item_list = global.array_items,
//_shop_slot_num = 4,
//_var_struct = {
	
//	y: _y_ancor,
//	x: _x_ancor + _gap,

//}

//_array_current_items = [];
//// forgot what i wanted to do wtih this array, woopsies.
//// oh now i remember, it's for making some king of array_foreach that updates all of it's contents'
//// positions using the values provided by this grimlin

//// don't add more items if the array doesn't have anymore items
//for (var i = 0; i < _shop_slot_num; i ++)
//{
//	var itm = noone
	
//	if (i < array_length(_item_list)) itm = _item_list[i]
//	// cheacks if i isn't out of the array's range, if so "itm" is set as the coorosponding item in the array
//	// otherwise, "itm" keeps it's original value as noone, then "itm" is passed into the created shop and st as
//	// the shop's item
//		_c_item = instance_create_layer(x,y,creation_layer,obj_shop_2,
//		{
//			x_offset: _x_ancor + _gap + (2 *_gap * i),
//			y_offset: _y_ancor,
//			item: itm
			
			
//		}
//		);
//		array_insert(_array_current_items,_c_item,i);
		
//		MESSAGE
		
		
		
		
	
	
	
	
//}
#endregion

_can_draw = false
func_shop_ui_set();

_arr_first = array_first(_array_current_items);
_arr_last = array_last(_array_current_items);