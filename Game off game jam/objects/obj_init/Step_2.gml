
if (not instance_exists(camera_target)) exit;


var _view_w = camera_get_view_width(view_camera[0]);
var _view_h = camera_get_view_height(view_camera[0]);


var _target_x = camera_target.x - _view_w / 2;
var _target_y = camera_target.y - _view_h / 2;
// the x and y postion the camera would be set to to follow the object
var _current_view_x = camera_get_view_x(view_camera[0]);
var _current_view_y = camera_get_view_y(view_camera[0]);

_target_x = lerp(_current_view_x,_target_x,cam_perc);
_target_y = lerp(_current_view_y,_target_y,cam_perc);
// smooths the camera movement by a set percentage

_target_x = clamp(_target_x,0,room_width - _view_w);
_target_y = clamp(_target_y,0,room_height - _view_h);
// restricts the camera to the room's borders

camera_set_view_pos(view_camera[0],_target_x,_target_y);