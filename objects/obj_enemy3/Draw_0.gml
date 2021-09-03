var _animelength = 3;
var _flamewidh = 20;
var _flameheight = 16;
var _animespeed = 10;

var _XX = x-x_offset;
var _YY = y-y_offset;
if(instance_exists(obj_player)){
	if (direction > 45 && direction <= 135) {
		y_flame = 3; Row = 0;
	//} else if (direction > 95 && direction <= 170) {
	//	//Left UP
	//	y_flame = 2; Row =1;
	} else if (direction > 135 && direction <= 225) {
		y_flame = 1; Row = 0;
	} else if (direction > 225 && direction <= 315) {
		y_flame = 0; Row = 0;
	} else if (direction > 315 || direction <= 45) {
		y_flame = 2; Row = 0;
	} else {
		y_flame = 0; Row = 0;
	}
} else {
	var _dir = choose(1,2,3,4)
	switch (_dir){
		case 1: y_flame = 1; Row = 0;	break;
		case 2: y_flame = 2; Row = 0;	break;
		case 3: y_flame = 0; Row = 0;	break;
		case 4:	x_flame = Row*3;	break;
	}
}
if (moveX = 0 && moveY = 0) {
		x_flame = Row*3;
}


// DRAW SPRITE
draw_sprite_part(spr_enemy3,0,floor(x_flame)*_flamewidh,y_flame*_flameheight,_flamewidh,_flameheight,_XX,_YY);

// INCRIMENT FRAME ANIMATION
if(!returnflug){
	if(x_flame < _animelength*(Row+1))	{x_flame += _animespeed/60;}
	else						{returnflug = !returnflug;}
}else {
	if(x_flame > (Row*_animelength))	{x_flame -= _animespeed/60;x_flame =floor(x_flame);}
	else						{returnflug = !returnflug;}
}

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);