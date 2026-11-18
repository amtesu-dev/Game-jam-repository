

if place_meeting(x,y,obj_dude_enemy)
{
	
	var nearest_enemy = instance_nearest(x,y,obj_dude_enemy)
	if (fragile) destroy_bullet = true;
	//destroy_bullet = true
	func_deal_dmg(dmg,nearest_enemy)
	show_debug_message(string(func_deal_dmg(dmg,nearest_enemy)))
	// note that the "dmg" variable is set by the obj_tower_parent after it creates a bullet
	
	
}


if (destroy_bullet) instance_destroy();
// not sure why i'm using this when i could just destroy it outright but whatever i'll just have to trust
// my past (evill) self
// not yours wrongly -Hastiry
// hey this code needs no "-Hastiry" after them, I WROTE THE WHOLE FUCKING THING NOBODY ELSE DESRVES CREDITS 
// RAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH HAVE A GOOD FUCKING DAY PERSON READING MY COMMENTS
// sorry guys i didn't mean it i'm sorry pls forgive me i'm super soory you guys desrve a little bit of credit promise (lying)
//																															I'M NOT!!!!!!!!!!!!!!!!
// BREAKING NEWS: MAN (or woman) LOSES THEY SHIT WHILE CODING A GAME (EMOTIONAL) (GAY)