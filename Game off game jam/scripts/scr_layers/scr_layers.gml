

enum LAYER
{
	instances,
	water,
	game,
	ui
}


function func_create_layer(_layer,_var_holder)
{
	created_layer = layer_create(func_get_layer_depth(_layer),"lay_" + func_get_layer_name(_layer))
	variable_instance_set(_var_holder,"L_" + func_get_layer_name(_layer),created_layer)
	// wanted to set the variables automatically but figured it'd just be better to make variables in the game object instead
	// i'll keep it anyways, won't hurt to have an extra 

	
	show_debug_message("lay_" + func_get_layer_name(_layer))
}


function func_get_layer_depth(_layer)
{
	switch (_layer)
	{
		case LAYER.instances:
			return 10;
		break;
		
		case LAYER.water:
			return 20;
		break;
		
		case LAYER.ui:
			return -10;
		break;
		
		case LAYER.game:
			return 0;
		break;
	}
}




function func_get_layer_name(_layer)
{
	switch (_layer)
	{
		case LAYER.instances:
			return "instances";
		break;
		
		case LAYER.game:
			return "game";
		break;
		
		case LAYER.ui:
			return "ui"
		break;
		
		
		case LAYER.water:
			return "water";
		break;
	}
	
	
	
	
}







