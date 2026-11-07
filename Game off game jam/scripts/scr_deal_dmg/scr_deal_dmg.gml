
function func_has_no_hp(dmg_reciever,destroy)
{
	if (destroy)	//planning on using this variable later on, but i have nothing for it now (the "destroy" var i mean)
	{
		instance_destroy(dmg_reciever)
	}
	// i intend to make this update all the objects that have the "hp" variable to excute this as their default code
	
	
}

function func_deal_dmg (
dmg,
dmg_reciever
//,ex_no_hp
)
{

	dmg_reciever.hp -= dmg
	return dmg_reciever.hp
	
	
	
	
	//var destroy = true
	//if variable_instance_exists(dmg_reciever,"hp") // checks if the object has the "hp" variable or not
	//{
	//	dmg_reciever.hp -= dmg;
	//	//show_message(string(dmg_reciever.hp))

	//	var hp = dmg_reciever.hp;
		
	//	if dmg_reciever.hp <= 0
	//	{
	//		if (ex_no_hp != undefined)
	//		{
	//			//dmg_reciever.ex_no_hp = 
	//			ex_no_hp();	//excute code when the object's hp hits 0
	//			// for whatever reason, it runs regardless of the dmg_reciever's hp, this is NOT intended
	//		}
	//		else
	//		{
	//		//dmg_reciever.ex_no_hp =  
	//		func_has_no_hp(dmg_reciever,destroy)	//default function to run if there's no code in ex_no_hp
	//		}
	//	}
	//}
	//else exit;	// exits the code if no variable is found, not sure if this is neccasary at all or not.
	
}