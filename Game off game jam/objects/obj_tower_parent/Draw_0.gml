
draw_set_colour(c_white);
draw_self();

draw_set_colour(c_red);
draw_circle(x,y,radius,true);

draw_set_colour(c_white);

if (instance_exists(target))
{
	draw_circle(target.x,target.y,radius,true)
	draw_set_colour(c_aqua)
	draw_circle(target_nearest.x,target_nearest.y,radius,true)
	
	draw_set_colour(c_white)
}