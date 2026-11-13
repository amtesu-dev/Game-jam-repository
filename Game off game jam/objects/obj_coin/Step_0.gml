
collect_x = global.collect_x
collect_y = global.collect_y

var _dist = point_distance(x,y,collect_x,collect_y)

if (collected and (collect_x != undefined and collect_y != undefined))
{
	//lerp_perc += (_dist / start_dist)
	// i wanted to make a smoother moving coin this isn't working
	
	
	x = lerp(x,collect_x,lerp_perc)
	y = lerp(y,collect_y,lerp_perc)
}
if (collect_x == x and collect_y == y) instance_destroy()
