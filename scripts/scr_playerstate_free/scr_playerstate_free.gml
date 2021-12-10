function playerstate_free(){
moveX = lengthdir_x(inputmagnitude * spd,inputDirection);
moveY = lengthdir_y(inputmagnitude * spd,inputDirection);

// HideLevel hand over the obj_par_enemy
if(input_hide){
	with(obj_par_enemy){
		range_minus = other.HideLevel;
	}
} else {
	with(obj_par_enemy){
		range_minus = 0;
	}
}

if (moveX = 0 && moveY = 0) {
	spd = 0;
}


//Collision check
Collision();


// APLLY MOVEMENT
//particle FX
exhaustCounter++;
if(exhaustCounter >= 5 && spd != 0 && !input_hide){
	create_dash_exhaust("obj_player");
	exhaustCounter = 0;
}

x += moveX;
y += moveY;

}

