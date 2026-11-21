
draw_set_colour(c_white);
draw_self();

draw_set_alpha(0.1);
draw_set_colour(c_red);
draw_circle(x,y,radius,false);

draw_set_colour(c_white);
draw_set_alpha(1);

/* was annoying me && is useless in the actual game, comm out
draw_set_colour(c_red);
if (instance_exists(target)) draw_text(target.x,target.y - 50,"TARGET")
//draw_circle(target.x,target.y,radius,false);
draw_set_colour(c_green);
if (instance_exists(_target_nearest)) draw_text(_target_nearest.x,_target_nearest.y - 50,"NEAREST")
//draw_circle(target_nearest.x,target_nearest.y,radius,false);
*/

draw_set_colour(c_white);
draw_set_alpha(1);