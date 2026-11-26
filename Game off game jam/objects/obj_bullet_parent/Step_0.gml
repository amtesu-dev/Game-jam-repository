

var nearest_enemy = instance_nearest(x,y,obj_dudes_parent);
var _inst_var_ex = variable_instance_exists(nearest_enemy,"dmg_taken") 

with obj_dudes_parent
{
	if place_meeting(x, y, other)
	{
	if (other.fragile) instance_destroy(other);
	else
	{
		if !array_contains(other.hit, id)
		{
			array_push(other.hit, id)
			func_deal_dmg(other.dmg, id)
		}
	}
	}
}

if place_meeting(x,y,obj_dudes_parent)
{
	if (not _inst_var_ex)
	{
		variable_instance_set(nearest_enemy,"dmg_taken",false);
	}
	
	//if (nearest_enemy.dmg_taken == false)
	//{
	//	func_deal_dmg(dmg,nearest_enemy);
	//	variable_instance_set(nearest_enemy,"dmg_taken",true);

	//}
		//a check so that bullets that contact with an object don't deal damage more than once
		 //this is made for phasing bullets so they wouldn't deal too much damage
		 //this part of the check is made so that the oject that has the variable set to true
		 //doesn't keep it like that since that would stop all bullets from dealing damage
		 //(this is the replacment of all this commented code, im keeping it just incase i want to use it later)
	// note that the "dmg" variable is set by the obj_tower_parent after it creates a bullet
	
	
}
//else if (_inst_var_ex and nearest_enemy.dmg_taken == true) 
//{
//	nearest_enemy.dmg_taken = false;
	 //a check so that bullets that contact with an object don't deal damage more than once
	 //this is made for phasing bullets so they wouldn't deal too much damage
	 //this part of the check is made so that the oject that has the variable set to true
	 //doesn't keep it like that since that would stop all bullets from dealing damage
	 
	 // ok so half way through this code i releasied i could make it much simpler, so i did
//}


if (destroy_bullet) instance_destroy();
// not sure why i'm using this when i could just destroy it outright but whatever i'll just have to trust
// my past (evill) self
// not yours wrongly -Hastiry
// hey this code needs no "-Hastiry" after them, I WROTE THE WHOLE FUCKING THING NOBODY ELSE DESRVES CREDITS 
// RAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH HAVE A GOOD FUCKING DAY PERSON READING MY COMMENTS
// sorry guys i didn't mean it i'm sorry pls forgive me i'm super soory you guys desrve a little bit of credit promise (lying)
//																															I'M NOT!!!!!!!!!!!!!!!!
// BREAKING NEWS: MAN (or woman) LOSES THEY SHIT WHILE CODING A GAME (EMOTIONAL) (GAY)