
	draw_sprite(Spr_Menu_Background, 0, MenuXOff, MenuYOff)
	
		switch SelLvl
		{
			default: draw_sprite(spr_LevelThumbnail1, 0, 0, MenuYOff + 1080);break;
			case 1: draw_sprite(spr_LevelThumbnail2, 0, 0, MenuYOff + 1080);break;
			case 2: draw_sprite(spr_LevelThumbnail3, 0, 0, MenuYOff + 1080);break;
		}
	
draw_sprite(Sprite58, 0, 0, TitleYOff)