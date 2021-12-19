function playerstate_bonk(){
	// Movement
	moveX = lengthdir_x(inputmagnitude*bonk_speed,inputDirection-180);
	moveY = lengthdir_y(inputmagnitude*bonk_speed,inputDirection-180);
	moveDistanceRemaining = max(0,moveDistanceRemaining-bonk_speed);
	//Collision check
	var _collided = Collision(throu_flag);
	
	//Update sprite
	//sprite_index = spriteRoll;
 	//var _totalFrames = sprite_get_number(sprite_index/4);
	//image_index = (CARDINAL_DIR * _totalFrames) + ((1-(moveDistanceRemaining/roll_distance)))*_totalFrames;
	//x += moveX;
	//y += moveY;
	//Change height
	z = sin((moveDistanceRemaining/bonk_distance)*pi)*bonk_distanceheight;
	//Change state
	if(moveDistanceRemaining <= 0){
		state = playerstate_free;
	}
}