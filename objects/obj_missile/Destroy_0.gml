/// @description
global.cameraShake = 4;
audio_play_sound(SE_bomb2,1,0);
var _inst = instance_create_layer(x,y,"Instances",obj_par_bomb);
with(_inst){
	attack = other.attack;
}