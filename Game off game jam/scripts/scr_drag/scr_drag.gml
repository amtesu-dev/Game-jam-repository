/// @function scr_drag_update
///// drag a instance above the mouse when the object have "dragable" tag.
function scr_drag_update() {
	var _mouse_pressed = mouse_check_button_pressed(mb_left);

	
	//	Select an new target at click. Also respect drag:true used by the store
	// to start moving an item early bought.
	if (dragged_id == noone) {
		var _hits = ds_list_create();
		var _hit_count = collision_point_list(mouse_x, mouse_y, all, false, true, _hits, true);

		for (var _i = 0; _i < _hit_count; _i++) {
			var _candidate = _hits[| _i];
			//if (variable_instance_exists(_candidate,"locked"))
			//{
			//	_locked = variable_instance_get(_candidate,"locked")
			//}
			if (!instance_exists(_candidate)) continue;
			

			var _object_name = object_get_name(_candidate.object_index);
			if (!asset_has_tags(_object_name, "dragable")) continue;
			
		
			var _shop_requested_drag = variable_instance_exists(_candidate, "drag")
				&& _candidate.drag;
			if (!_mouse_pressed && !_shop_requested_drag) continue;

			dragged_id = _candidate;
			drag_offset_x = _candidate.x - mouse_x;
			drag_offset_y = _candidate.y - mouse_y;
			drag_start_depth = _candidate.depth;
			_candidate.drag = true;
			break;
		}

		ds_list_destroy(_hits);
	}

	// move only the selected targert and have store the point clicked by the cursor.
	if (dragged_id != noone) {
		var _target = dragged_id;
		if (!instance_exists(dragged_id)) {
			dragged_id = noone;
		} else if (mouse_check_button(mb_left) and not _target.locked) 
		{
			var _grid_size = variable_global_exists("grid_size") ? global.grid_size : 64;

			_target.x = mouse_x + drag_offset_x;
			_target.y = mouse_y + drag_offset_y;
			_target.depth = drag_start_depth - 1;
			_target.drag = true;

			// if the object touch the gride, it goes to the closest square.
			
				
				_grid_hit = collision_rectangle(
				_target.bbox_left, _target.bbox_top,
				_target.bbox_right, _target.bbox_bottom,
				global.grid_objects, false, true
			);
			if (
				_grid_hit != noone
				and point_in_rectangle(mouse_x,mouse_y,_target.bbox_left, _target.bbox_top,_target.bbox_right, _target.bbox_bottom)	//checks if the mouse is in the square
			   ) 
			{
				_target.x = round(_target.x / _grid_size) * _grid_size;
				_target.y = round(_target.y / _grid_size) * _grid_size;
				
			}
		}
		else if (_grid_hit != noone and not mouse_check_button_released(mb_left) )
		{
			// if the mouse LMB is released while the object is touching the nearest square, the object becomes "locked" (aka it can't be dragged again)
			_target.locked = true
		}
		else 
		{
			_target.drag = false;
			_target.depth = drag_start_depth;
			dragged_id = noone;
		}
	}
}


