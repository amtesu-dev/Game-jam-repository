if keyboard_check_pressed(vk_anykey)
{
	page = "title_down"
}

if page = "title"
{
	TitleYOff = 0
}
else if page = "title_down"
{
	TitleYOff = lerp(TitleYOff, MaxDownTitleYOff, 0.2)
	if round(TitleYOff/10)*10 = round(MaxDownTitleYOff/10)*10
	{
		page = "main"
	}
}
else
{
	TitleYOff -= 250
}

