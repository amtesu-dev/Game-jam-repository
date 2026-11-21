

ex_code_room_start();

// layers
instance_create_depth(0,0,depth,obj_init)


// dragging
instance_create_depth(0,0,depth,obj_drag_manager)


// ui

instance_create_depth(0,0,depth,obj_ui);

instance_create_depth(0,0,depth,obj_ui_shop);
instance_create_depth(0,0,depth,Obj_Cam);