
global.points = 5000


// creation excute code, put this in the creation code in a room for specific modifications
ex_code_step = function(){};
ex_code_room_start = function(){};
ex_code_room_end = function(){};

// dragging variables
dragged_id = noone;
drag_offset_x = 0;
drag_offset_y = 0;
drag_start_depth = 0;

// layers

// unfinished depth system for layers
enum LAYER
{
	INSTANCES = 0,
	WATER = -100,
	GAME = 0
	
}


// system for setting up all layers easily, somehow doesn't work???? idk what i did wrong here

//array_layers = ["lay_instances","lay_game","lay_water"]
//array_layer_names = ["layer_instances","layer_game","layer_water"]
//array_layer_depth = [0,-100,100]

//for (var i = -1; i = array_length(array_layers); i ++)
//{
//	var lay = array_layers[i]
//	MESSAGE
//	if (not layer_exists(lay))
//	{
//		MESSAGE
//		layer_create(array_layer_depth[i],array_layer_names[i])
//		show_message(lay + " was created!")
//	}
//	var lay_id = layer_get_id(lay);
//	variable_instance_set(self,array_layer_names[i],lay_id);
//	show_message(array_layer_names[i])
//}


layer_inst = layer_get_id("lay_instances");
//layer_game = layer_get_id("lay_game");
//layer_water = layer_get_id("lay_water");

//inst_layer = layer_get_id("lay_instances");
layer_water = layer_create(100,"lay_water");
layer_game = layer_create(0,"lay_game");


tools_vis = show_dev_tools ? true : false;

layer_set_visible(layer_game,tools_vis);
