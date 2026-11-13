
// camera values
#macro BASE_W 1980
#macro BASE_H 1080
#macro BASE_ASPECT (BASE_W / BASE_H)

// display values
#macro DISP_W display_get_width()
#macro DISP_H display_get_height()
#macro WIND_W window_get_width()
#macro WIND_H window_get_height()
#macro WIND_GET_FULL window_get_fullscreen()
#macro APP_SURF application_surface
#macro APP_W surface_get_width(APP_SURF)
#macro APP_H surface_get_height(APP_SURF)
#macro APP_ASPECT (APP_W / APP_H)

// view values
#macro VIEW view_camera[0]
#macro VIEW_W camera_get_view_width(VIEW)
#macro VIEW_H camera_get_view_height(VIEW)
#macro VIEW_X camera_get_view_x(VIEW)
#macro VIEW_Y camera_get_view_y(VIEW)
#macro VIEW_R (VIEW_X + VIEW_W)
#macro VIEW_B (VIEW_Y + VIEW_H)
#macro VIEW_CENTER_X (VIEW_X + VIEW_W / 2)
#macro VIEW_CENTER_Y (VIEW_Y + VIEW_H / 2)
#macro VIEW_ASPECT (VIEW_W / VIEW_H)

// gui values
#macro GUI_W display_get_gui_width()
#macro GUI_H display_get_gui_height()
#macro GUI_ASPECT (GUI_W / GUI_H)

// messages
#macro DEBUG_MESSAGE show_debug_message("IT WORKS??!?!?!!!?!?!?")
#macro MESSAGE show_message("IT WORKS!!!!!!!!!")

