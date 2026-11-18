


var _spr_w = sprite_get_width(spr_shop_placeholder),
_spr_h = sprite_get_height(spr_shop_placeholder),
_gap = _spr_w / 2,
_y_ancor = VIEW_H + _spr_h + 20,
_x_ancor = VIEW_X;

var _item_list = global.array_items,
_shop_slot_num = 4,
_var_struct = {
	
	y: _y_ancor,
	x: _x_ancor + _gap,

}

_array_current_items = [];

for (var i = 0; i < _shop_slot_num; i ++)
{
	if (_item_list[i] != undefined or noone)
	{
		var _c_item = instance_create_layer(x,y,creation_layer,obj_shop_2,
		{
			x: _x_ancor + _gap + (2 *_gap * i),
			y: _y_ancor,
			item: _item_list[i]
			
			
		}
		);
		array_insert(_array_current_items,_c_item,i);
		
		MESSAGE
		
		
		
		
	}
	
	
	
}
 