

//var _ap_ship_1 = [];

//_ap_ship_1[0] = [
//    [-338, -179, 90],
//];


//ap_ship = _ap_ship_1[0]

array_push(global.array_ships,self)

_grid_num = 2


arr_objs_list = [obj_grid_old,obj_grid_old,obj_grid_old];

//for (var i = 0; i = _grid_num; i --)
//{
//	array_push(arr_objs_list,obj_grid)
//}


arr_objs_pos = [
{
	_x: 153,
	_y: 70,
	_depth: 10
},
{
	_x: 500,
	_y: 100,
	_depth: 10
},
{
	_x: 200,
	_y: 300,
	_depth: 20
	
	
}
];



arr_attached = [];



for (var i = 0; i == instance_number(obj_grid_old); i++)
{
	var _inst = instance_place(x,y,obj_grid_old)
	
	func_add_attached(_inst);
	
	
}

//for (var i = 0; i == array_length(arr_objs_list) - 1; i --)
//{
//	var _inst = arr_objs_list[i]
//	var _arr_index = array_get_index(arr_objs_list,_inst)
//	var _arr_pos = arr_objs_pos
//	var _item = instance_create_depth(
//	x + _arr_pos[_arr_index]._x,
//	y + _arr_pos[_arr_index]._y,
//	depth - _arr_pos[_arr_index]._depth,_inst)
//	DEBUG_MESSAGE
//	func_add_attached(_item)
//}




array_foreach(arr_objs_list, function(_inst)
{
	var _arr_index = array_get_index(arr_objs_list,_inst)
	var _arr_pos = arr_objs_pos
	var _item = instance_create_depth(
	x + _arr_pos[_arr_index]._x,
	y + _arr_pos[_arr_index]._y,
	depth - _arr_pos[_arr_index]._depth,_inst)
	//DEBUG_MESSAGE
	func_add_attached(_item)
	
})

//func_add_attached(obj_grid_old)

#region
func_add_attached(grd_t_1);
func_add_attached(grd_t_2);
func_add_attached(grd_t_3);
func_add_attached(grd_t_4);
func_add_attached(grd_t_5);
func_add_attached(grd_t_6);
func_add_attached(grd_t_7);
func_add_attached(grd_t_8);
func_add_attached(grd_t_9);
func_add_attached(grd_t_10);

func_add_attached(grd_b_1);
func_add_attached(grd_b_2);
func_add_attached(grd_b_3);
func_add_attached(grd_b_4);
func_add_attached(grd_b_5);
func_add_attached(grd_b_6);
func_add_attached(grd_b_7);
func_add_attached(grd_b_8);
func_add_attached(grd_b_9);
func_add_attached(grd_b_10);

func_add_attached(grd_r_1);
func_add_attached(grd_r_2);
func_add_attached(grd_r_3);

func_add_attached(grd_l_1);
func_add_attached(grd_l_2);
func_add_attached(grd_l_3);
#endregion

dest = 0;

moving_forward = true;

spawn_timer = 0;

tower = instance_create_depth(x,y,depth - 10,obj_tower_cannon);

