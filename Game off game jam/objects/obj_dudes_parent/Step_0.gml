



_tar = obj_ship

if (instance_exists(_tar))
{
	can_draw = true;
	_tar = instance_nearest(x,y,obj_ship);
	if ((not _set_target) and 
	rectangle_in_circle(_tar.bbox_left,_tar.bbox_top,_tar.bbox_right,_tar.bbox_bottom,x,y,radius) == 2)
	{
		target = _tar
	}
	else target = noone;
}

if (target != noone)
{
	direction = point_direction(x,y,target.x,target.y)
}

if (hp <= 0) instance_destroy();