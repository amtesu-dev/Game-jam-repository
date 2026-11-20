global.PathFindingGridSize = 16
global.PathFindingGridStartOff = 8
global.PathFindingGridVisible = false

global.PathFindingGrid = mp_grid_create(global.PathFindingGridStartOff, global.PathFindingGridStartOff, room_width/global.PathFindingGridSize, room_height/global.PathFindingGridSize, global.PathFindingGridSize, global.PathFindingGridSize)

mp_grid_add_instances(global.PathFindingGrid, Obj_EnemyPathWall, false)