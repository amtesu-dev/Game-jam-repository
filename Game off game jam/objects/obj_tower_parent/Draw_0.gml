
draw_set_colour(c_white);
draw_self();

draw_set_alpha(0.1);
draw_set_colour(c_red);
draw_circle(x,y,radius,false);

draw_set_colour(c_white);
draw_set_alpha(1);

if (instance_exists(target))
{
	draw_set_colour(c_red);
	draw_text(target.x,target.y - 50,"TARGET")
	//draw_circle(target.x,target.y,radius,false);
	draw_set_colour(c_green);
	draw_text(target_nearest.x,target_nearest.y - 50,"NEAREST")
	//draw_circle(target_nearest.x,target_nearest.y,radius,false);
	
}

draw_set_colour(c_white);
draw_set_alpha(1);