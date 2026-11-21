with obj_dudes_parent
{
	if place_meeting(x, y, other)
	{
		instance_destroy()
		global.HarbourHp --
	}
}

if global.HarbourHp <= 0
{
	game_end()
	//change it to gameover later
}