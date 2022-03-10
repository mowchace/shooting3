/// @description
global.cameraX = 0;
global.cameraY = 0;
global.cameraShake = 0;

global.cameraWidth = RESOLUTION_W;
global.cameraHeight = RESOLUTION_H;

displayscale = 2;
displaywidth = displayscale*global.cameraWidth;
displayHeight = displayscale*global.cameraHeight;

target = obj_player;

surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);