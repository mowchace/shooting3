// Camera
view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0],global.cameraWidth,global.cameraHeight);

// Follow target(roomstart firsttime only)
if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY,0,room_height-global.cameraHeight);
}

camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);

// Display
displayscale = 2;
displaywidth = displayscale*global.cameraWidth;
displayHeight = displayscale*global.cameraHeight;

window_set_size(displaywidth,displayHeight);
surface_resize(application_surface,displaywidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth,global.cameraHeight);

alarm[0] = 1;
