/// @description
if(state != states.detect)exit;
var _dir = direction;
rotate_speed = choose(-2,2);
spd = n_spd*r_spd;
moveX = lengthdir_x(spd,_dir);
moveY = lengthdir_y(spd,_dir);
if(actionWait <= 0){
	state = states.free;
	found_ally = false;
	alarm[0] = room_speed*1;
	}
alarm[1] = room_speed*1;