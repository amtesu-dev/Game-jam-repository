

function func_dialog_create(_messages)
{
	if 	(instance_exists(obj_dialog)) return;
	var current_d = 0
	
	var inst = instance_create_depth(0,0,0,obj_dialog
	//,{current_message: 0,messages:_messages[current_d]}
	);

		
		inst.current_message = 0;
		inst.messages = _messages[current_d];

		//if (current_d < array_length(_messages) - 1 or current_d != array_length(_messages) - 1)
		//{
		//	current_d ++
		//}
	
	
}