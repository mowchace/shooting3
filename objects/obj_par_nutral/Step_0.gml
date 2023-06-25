if(global.gamePaused){
	image_speed = 0;
	animespeed = 0;
	exit;
}else{
	image_speed = animespeed;
	animespeed = 1;
}

attack_position_change(x,y-5,x,y-sprite_height/3);

//layer update
if(visible && y >= 0 && y < room_height){
	updatelayer();
}