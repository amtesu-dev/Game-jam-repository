#region PathFind
	PathTimer --
	if PathTimer <= 0
	{
		PathTimer = PathTimerDuration
		mp_grid_path(global.PathFindingGrid, path, x, y, TgX, TgY, 1)
	}

	if path_get_length(path > 0)
	{
		repeat Spd
		{
		x = path_get_point_x(path, 0)
		y = path_get_point_y(path, 0)
		path_delete_point(path, 0)
		}
	}
#endregion