

if (can_buy and item != noone)
{
	//mthd_buy();
	//if (not _item_is_selected) _item_is_selected = true;
	
	if (not draw_tower)
	{
		draw_tower = true;
	}
	
	if (_item_is_selected)
	{
		obj_grid_hover._mouse_obj = item;
	}
	else 
	{
		_item_is_selected = true;
	}
}
