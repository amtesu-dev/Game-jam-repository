function func_shop_ui_set()
{
	var _spr = spr_shop,
	_spr_w = sprite_get_width(_spr),
	_spr_h = sprite_get_height(_spr),
	_gap = _spr_w / 2,
	_y_ancor = VIEW_H + _spr_h + 20,
	_x_ancor = VIEW_X;


	//_y_ancor = VIEW_H + _spr_h + 20;
	//_x_ancor = VIEW_X;
	
	var _item_list = global.array_items,
	_shop_slot_num = 4,
	_var_struct = {
	
		y: _y_ancor,
		x: _x_ancor + _gap,

	}

	_array_current_items = [];
	// forgot what i wanted to do wtih this array, woopsies.
	// oh now i remember, it's for making some king of array_foreach that updates all of it's contents'
	// positions using the values provided by this grimlin

	// don't add more items if the array doesn't have anymore items
	for (var i = 0; i < _shop_slot_num; i ++)
	{
		var itm = noone
	
		if (i < array_length(_item_list)) itm = _item_list[i]
		// cheacks if i isn't out of the array's range, if so "itm" is set as the coorosponding item in the array
		// otherwise, "itm" keeps it's original value as noone, then "itm" is passed into the created shop and st as
		// the shop's item
			_c_item = instance_create_depth(x,y,func_get_layer_depth(LAYER.ui) - 10,obj_shop_2,
			{
				x_offset:  _gap + 128 + ((2 *_gap  + sprite_get_width(spr_UI_panel) / 2 - 10) * i),
				y_offset: _spr_h,
				item: itm,
				set_ui_pos: true,
				_shop_slot: i + 1
			
			
			}
			);

			//show_debug_message(string(i))
			// something wierd happened, the 2nd and 4th shop object created with this script jjust kind of disapeared after adding the _shop_slot into the var_struct
			// it didn't happen again when i replayed which was VERY weird, maybe it's just a one off thing but idk.
			// IT HAPPNED AGAIN!!!
			// idk what this is but using a ++ instead of  + 1 just kind of breaks the whole thing, i will NOT investigate furthure
			// i find it very weird cuz (as of now) the variable isn't even used in anything.
			//this app is gonna make me go insane
		array_insert(_array_current_items,_c_item,i);
		
		//DEBUG_MESSAGE;
		_i = i

	}
}