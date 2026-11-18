
draw_self();

if (item != noone)
{

	if (variable_instance_exists(item,"tower_name"))
	{
		variable_instance_set(self,"item_name",item.tower_name);
		//item_name = item.tower_name;
	}
	draw_sprite(object_get_sprite(item),image_index,x,y);
	func_set_align(fa_center,fa_middle);
	draw_text_transformed(x,y + sprite_height - 10, item_name,1.2,1.2,0);
	func_set_align(fa_left,fa_top);
}


if (state == ST_SHOP.CANNOT_SELL)
{
	draw_sprite(spr_x,-1,x,y);
}
  
