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

function array_contains_2D(_array, _off, _elm)
{
	for(var i = 0; i < array_length(_array); i++)
	{
		if _array[i][_off] = _elm
		{
			return true
		}
	}
	return false
}