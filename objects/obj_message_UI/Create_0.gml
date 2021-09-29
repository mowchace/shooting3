/// @description
depth = -1;
scale = 1;

cell_size = 32;
message_UI_width = 320;
message_UI_height = 75;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

message_UI_x = global.cameraX+global.cameraWidth-message_UI_width;
message_UI_y = global.cameraY+global.cameraHeight-message_UI_height;