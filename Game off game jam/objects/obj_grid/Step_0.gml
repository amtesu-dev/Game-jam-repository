with obj_tower_parent
{
	if place_meeting(x, y, other)
	{
		if !array_contains_2D(other.towers, 0, id)
		{
			array_push(other.towers, [id, x - other.x, y - other.y])
		}
	}
}
//debug
if keyboard_check(vk_left)
{
	x-=3
}
if keyboard_check(vk_right)
{
	x+=3
}
if keyboard_check(vk_up)
{
	y-=3
}
if keyboard_check(vk_down)
{
	y+=3
}


for(var i = 0; i < array_length(towers); i++)
{
	if !place_meeting(x, y, towers[i][0])
	{
		array_delete(towers, i, 1)
	}
	else
	{
		if towers[i][0].drag
		{
			towers[i][1] = round((towers[i][0].x - x)/w)*w
			towers[i][2] = round((towers[i][0].y - y)/h)*h
		}
		
		towers[i][0].x = towers[i][1] + x
		towers[i][0].y = towers[i][2] + y
	}
}