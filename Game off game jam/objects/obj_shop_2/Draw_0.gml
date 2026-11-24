
draw_self();

if (item != noone)
{
	var _spr = object_get_sprite(item)
	draw_sprite(_spr,image_index,x,y);
	if (draw_tower)
	{
		draw_sprite(_spr,-1,mouse_x,mouse_y);
	}
	
	func_set_align(fa_center,fa_middle);
	func_draw_set(1,c_black,function()
	{
		draw_text_transformed(x,y + sprite_height - 10, item_name,1.2,1.2,0);

	})
	func_set_align(fa_left,fa_top);
}


if (state == ST_SHOP.CANNOT_SELL)
{
	draw_sprite(spr_x,-1,x,y);
}
  
