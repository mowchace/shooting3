#region Follow target
if(instance_exists(target)){
	//move camera to follow object center position
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	//follow baffer(follow object center position and max baffer is harf room_width)
	global.cameraX = clamp(global.cameraX,0,room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY,0,room_height-global.cameraHeight);
}
#endregion
// Camera Shake
global.cameraX += random_range(-global.cameraShake,global.cameraShake);
global.cameraY += random_range(-global.cameraShake,global.cameraShake);
// less camera shaking
if(global.cameraShake > 0){
	global.cameraShake -= 0.2;
	if(global.cameraShake < 0) global.cameraShake = 0;
}	
// Set camera pos
camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);