if(global.gamePaused){
	speed = 0;
	exit;
}else{
	speed = baseSpeed;
}
life -= 1;
if(life <= 0){instance_destroy();}