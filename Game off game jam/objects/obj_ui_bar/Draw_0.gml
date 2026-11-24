//draw_self();

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


draw_sprite_stretched(spr_UI_panel,0,x,y,BASE_W,100);

draw_set_font(fnt_ui);

func_draw_set(1,c_black,
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
		var coin_pos_x = x + 56,
		coin_pos_y = y + 20
		draw_sprite_ext(spr_UI_gold,-1,coin_pos_x,coin_pos_y,0.7,0.7,0,c_white,1)
		var coin_w = sprite_get_width(spr_UI_gold)
		draw_text_ext_transformed
		(
			coin_pos_x + coin_w - 10,
			coin_pos_y,
			": " + string(global.points),
			0,
			200,
			2.5,
			2.5, 
			0
		)

	
	
	//draw_sprite(HpSprite, 0, x + 500, 0)
	//draw_text(x + 600, 50, "Hp: " + string(global.HarbourHp))
	
	}
)



draw_set_font(fnt_def);
