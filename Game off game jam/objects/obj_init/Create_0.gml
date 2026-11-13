
if (not layer_exists("lay_instanaces")) func_create_layer(LAYER.instances,obj_game);
if (not layer_exists("lay_water")) func_create_layer(LAYER.water,obj_game);
if (not layer_exists("lay_ui")) func_create_layer(LAYER.ui,obj_game);
if (not layer_exists("lay_game")) func_create_layer(LAYER.game,obj_game); 


instance_destroy();