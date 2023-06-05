// new Camera settings
view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0],global.cameraWidth,global.cameraHeight);

#region Follow target(roomstart firsttime only)
if(instance_exists(target)){
	//move camera to follow object center position
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	//follow baffer(follow object center position and max baffer is harf room_width)
	global.cameraX = clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY,0,room_height-global.cameraHeight);
}
camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);
#endregion

window_set_size(displaywidth,displayHeight);
surface_resize(application_surface,displaywidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth,global.cameraHeight);

alarm[0] = 1;
