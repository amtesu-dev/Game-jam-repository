function __obj_camera_view_methods()
{
	cond_target_exits = function() 
	 { 
		return (instance_exists(camera_target) and target_is_pos) 
		//exit;
	 }
	 
	 
	mthd_target_set = function()	
	{
		if (not target_is_pos)
		{
			_target_x = camera_target.x - VIEW_W / 2;
			_target_y = camera_target.y - VIEW_H / 2;
			// the x and y postion the camera would be set to to follow the object
		}
		else
		{
			if (_y < VIEW_H / 2) _y = VIEW_H / 2;
			else if (_y > room_height - VIEW_H / 2) _y = room_height - VIEW_H/ 2;
			if (_x < VIEW_W / 2) _x = VIEW_W / 2;
			else if (_x > room_width - VIEW_W / 2) _x = room_width - VIEW_W / 2;
			// checks if the _x or _y are out of moving range(aka changing them won't move the camera anymore)
			// if so then set each one to the position of half the camera's width or height
			// this way if you keep trying to change the _x or _y they won't change as long as they're hitting
			// the room's border.
	
			_target_x = _x - VIEW_W / 2;
			_target_y = _y - VIEW_H / 2;
		}
	
		_target_x = lerp(VIEW_X,_target_x,cam_perc);
		_target_y = lerp(VIEW_Y,_target_y,cam_perc);
		// smooths the camera movement by a set percentage

		_target_x = clamp(_target_x,0,room_width - VIEW_W);
		_target_y = clamp(_target_y,0,room_height - VIEW_H);
		// restricts the camera to the room's borders

		camera_set_view_pos(VIEW,_target_x,_target_y);

	}
}