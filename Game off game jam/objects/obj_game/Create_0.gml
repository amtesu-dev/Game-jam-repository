camPosId = 0
CamPosArr = [[0, 0], [1376, 0]]


x = 0
y = 0

global.points = start_points

// creation excute code, put this in the creation code in a room for specific modifications
ex_code_step = function(){};
ex_code_room_start = function(){};
ex_code_room_end = function(){};


// layers



//instance_create_depth(0,0,depth,obj_init)


layer_instances = layer_get_id("lay_instances")
layer_water = layer_get_id("lay_water")
layer_ui = layer_get_id("lay_ui")
layer_game = layer_get_id("lay_game")





// should i put these stuff in a room start event instead of the create event?
// i mean if the objects get created once this object is created (and considering that it's persistent)
// wouldn't that ONLY make these changes at the start of the game?
// i haven't come across this bug but i think it'd be very possible

#region useless code
// system for setting up all layers easily, somehow doesn't work???? idk what i did wrong here
// [UPDATE] i made a new system (from a tutorial) that works (really!) it's above under the "layers" comment
// i'll leave this here cuz WHINE NOT?? (evil laughter)
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
//		show_message(string(lay) + " was created!")
//	}
//	var lay_id = layer_get_id(lay);
//	variable_instance_set(self,array_layer_names[i],lay_id);
//	show_message(array_layer_names[i])
//}


//layer_game = layer_get_id("lay_game");
//layer_water = layer_get_id("lay_water");
//inst_layer = layer_get_id("lay_instances");

//layer_inst = layer_get_id("lay_instances");
//layer_water = layer_create(100,"lay_water");
//layer_game = layer_create(0,"lay_game");


//tools_vis = show_dev_tools ? true : false;

//layer_set_visible(layer_game,tools_vis);
#endregion
