draw_self();

draw_set_font(fnt_ui);

func_draw_set(1,c_white,
	function()
	{
		//func_set_align(fa_middle,fa_left)
	
		//draw_text_ext_transformed
		//(
			//x + x_border,
			//y + y_border,
			//"Points: " + string(global.points),
			//0,
			//200,
			//2.5,
			//2.5,
			//0
		//)
		var coin_pos_x = x + x_border,
		coin_pos_y = y + y_border
		draw_sprite_ext(spr_coin,-1,coin_pos_x,coin_pos_y,2,2,0,c_white,1)
		var coin_w = sprite_get_width(spr_coin)
		draw_text_ext_transformed
		(
			coin_pos_x + coin_w,
			coin_pos_y,
			":" + string(global.points),
			0,
			200,
			2.5,
			2.5,
			0
		)
	
	global.collect_x = coin_pos_x
	global.collect_y = coin_pos_y
	
	}
)



draw_set_font(fnt_def);
