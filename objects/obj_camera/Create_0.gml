/// @description
global.cameraX = 0;
global.cameraY = 0;
global.cameraShake = 0;

global.cameraWidth = 512;
global.cameraHeight = 500;

displayscale = 2;
displaywidth = displayscale*global.cameraWidth;
displayHeight = displayscale*global.cameraHeight;

target = obj_player;

surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);