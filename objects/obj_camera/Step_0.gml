// Follow target
if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY,0,room_height-global.cameraHeight);
}

// Camera Shake
global.cameraX += random_range(-global.cameraShake,global.cameraShake);
global.cameraY += random_range(-global.cameraShake,global.cameraShake);

if(global.cameraShake > 0){
	global.cameraShake -= 0.2;
	if(global.cameraShake < 0) global.cameraShake = 0;
}	
// Set camera pos
camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);