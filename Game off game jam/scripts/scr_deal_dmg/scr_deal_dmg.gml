

function func_deal_dmg (dmg,dmg_reciever,ex_no_hp)
{
	if variable_instance_exists(dmg_reciever,"hp") // checks if the object has the "hp" variable or not
	{
		dmg_reciever.hp -= dmg;
		//show_message(string(dmg_reciever.hp))

		var hp = dmg_reciever.hp;
		
		if dmg_reciever.hp <= 0
		{
			if (ex_no_hp != undefined or noone)
			{
				ex_no_hp();	//excute code when the object's hp hits 0
				// for whatever reason, it runs regardless of the dmg_reciever's hp, this is NOT intended
			}
			else
			{
				instance_destroy(dmg_reciever);	//default function to run if there's no code in ex_no_hp
			}
		}
	}
	else exit;	// exits the code if no variable is found, not sure if this is neccasary at all or not.
	
}