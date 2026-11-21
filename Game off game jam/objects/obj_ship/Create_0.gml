

//var _ap_ship_1 = [];

//_ap_ship_1[0] = [
//    [-338, -179, 90],
//];


//ap_ship = _ap_ship_1[0]

arr_attached = [];

func_add_attached(cannon_1)
func_add_attached(cannon_2)
func_add_attached(grid_1)
func_add_attached(grid_2)

dest = 0;

moving_forward = true;

spawn_timer = 0;

tower = instance_create_depth(x,y,depth - 10,obj_tower_cannon);

