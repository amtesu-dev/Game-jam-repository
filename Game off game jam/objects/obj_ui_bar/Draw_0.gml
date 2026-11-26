draw_self();

//if global.HarbourHp > 75
//{
//	HpSprite = Spr_HarbHealth1
//}
//else if global.HarbourHp >= 25
//{
//	HpSprite = Spr_HarbHealth1_1
//}
//else if global.HarbourHp < 25
//{
//	HpSprite = Spr_HarbHealth1_2
//}

<<<<<<< HEAD
//draw_sprite_stretched(spr_ui_bar,0,x,y,1920,1080)
=======

draw_sprite_stretched(spr_UI_panel,0,x,y,BASE_W,100);
>>>>>>> parent of 30d1e35 (Merge branch 'main' of https://github.com/amtesu-dev/Game-jam-repository)

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
		draw_sprite_ext(spr_UI_gold,-1,coin_pos_x,coin_pos_y,2,2,0,c_white,1)
		var coin_w = sprite_get_width(spr_UI_gold)
		draw_text_ext_transformed
		(
			coin_pos_x + coin_w,
			coin_pos_y,
			": " + string(global.points),
			0,
			200,
			2.5,
			2.5, 
			0
		)
	
	global.collect_x = coin_pos_x
	global.collect_y = coin_pos_y
	
	
	//draw_sprite(HpSprite, 0, x + 500, 0)
	draw_text(x + 600, 50, "Hp: " + string(global.HarbourHp))
	
	}
)



draw_set_font(fnt_def);
