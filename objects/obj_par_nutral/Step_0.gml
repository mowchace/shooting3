if(global.gamePaused){
	image_speed = 0;
	animespeed = 0;
	exit;
}else{
	image_speed = animespeed;
	animespeed = 1;
}

attack_positionX = x;
attack_positionY = y-5;
attack_particlepositionX = x;
attack_particlepositionY = y-sprite_height/3;

if(HP <= 0){
	audio_play_sound(SE,1,0);
	instance_destroy();
}