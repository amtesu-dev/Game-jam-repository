function goto_tg(v, tg, spd)
{
	if v < tg
	{
		v += spd
		if v > tg
		{
			v = tg
		}
	}
	else if v > tg
	{
		v -= spd
		if v < tg
		{
			v = tg
		}
	}
	return v
}