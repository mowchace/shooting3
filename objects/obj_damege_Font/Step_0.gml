/// @description
if(global.gamePaused){exit;}
y -= 0.2;
LifeTime -= 1;
if(LifeTime <= 0){
	instance_destroy();
}