/// @description
#region global camera settings
//Using follow new criate object and text UI
global.cameraX = 0;
global.cameraY = 0;
global.cameraShake = 0;

//use script MACROS
global.cameraWidth = RESOLUTION_W;
global.cameraHeight = RESOLUTION_H;
#endregion

displayscale = 2;
displaywidth = displayscale*global.cameraWidth;
displayHeight = displayscale*global.cameraHeight;

//follow target
target = obj_player;

surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);