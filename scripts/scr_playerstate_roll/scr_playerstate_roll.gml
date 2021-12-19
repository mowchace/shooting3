function playerstate_roll(){
	// Movement
	moveX = lengthdir_x(inputmagnitude*roll_speed,inputDirection);
	moveY = lengthdir_y(inputmagnitude*roll_speed,inputDirection);
	moveDistanceRemaining = max(0,moveDistanceRemaining-roll_speed);
	//Collision check
	throu_flag = 0;
	var _collided = Collision(throu_flag);
	//Update sprite
	//sprite_index = spriteRoll;
 	//var _totalFrames = sprite_get_number(sprite_index/4);
	//image_index = (CARDINAL_DIR * _totalFrames) + ((1-(moveDistanceRemaining/roll_distance)))*_totalFrames;
	throu_flag = 1;
	//Change state
	if(moveDistanceRemaining <= 0){
		state = playerstate_free;
	}
	
	if(_collided){
		state = playerstate_bonk;
		moveDistanceRemaining = bonk_distance;
		global.cameraShake = 4;
	}
}