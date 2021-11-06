/*/// discription Idle
if(state != states.idle)exit;
moveX = 0;
moveY = 0;

var _idle = choose(0,1);
if(actionWait >= 0) {_idle = 1;}

if(_idle == 0){
	var _dir = choose(1,2,3,4)
	rotate_speed = 0;
	switch (_dir){
		case 1: moveX = -spd;	direction = 0;break;
		case 2: moveX = spd;	direction = 180;break;
		case 3: moveY = -spd;	direction = 90;break;
		case 4:	moveY = spd;	direction = 270;break;
	}
	alarm[0] = irandom_range(30,60);
} else {
	rotate_speed = 1;
	alarm[0] = const_rotate_speed_time;
}
