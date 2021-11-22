function playerstate_roll(){
	// Movement
	moveX = lengthdir_x(inputmagnitude*roll_speed,inputDirection);
	moveY = lengthdir_y(inputmagnitude*roll_speed,inputDirection);
	moveDistanceRemaining = max(0,moveDistanceRemaining-roll_speed);
	//Collision check
	Collision();
	var _collided = Collision();
	
	//Update sprite
	//sprite_index = spriteRoll;
 	//var _totalFrames = sprite_get_number(sprite_index/4);
	//image_index = (CARDINAL_DIR * _totalFrames) + ((1-(moveDistanceRemaining/roll_distance)))*_totalFrames;
	x += moveX;
	y += moveY;
	//Change state
	if(moveDistanceRemaining <= 0){
		state = playerstate_free;
	}
}