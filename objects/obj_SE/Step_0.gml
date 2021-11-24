/// @description
time--;
if(time <= 0){
	audio_play_sound(playsound,1,0);
	instance_destroy();
}