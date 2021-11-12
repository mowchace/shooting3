var _animelength = 3;
var _flamewidh = 20;
var _flameheight = 16;
var _animespeed = 10;

var _XX = x-x_offset;
var _YY = y-y_offset;
if(instance_exists(obj_player)){
	if (direction > 45 && direction <= 135) {
		y_frame = 3; Row = 0;
	//} else if (direction > 95 && direction <= 170) {
	//	//Left UP
	//	y_frame = 2; Row =1;
	} else if (direction > 135 && direction <= 225) {
		y_frame = 1; Row = 0;
	} else if (direction > 225 && direction <= 315) {
		y_frame = 0; Row = 0;
	} else if (direction > 315 || direction <= 45) {
		y_frame = 2; Row = 0;
	} else {
		y_frame = 0; Row = 0;
	}
} else {
	var _dir = choose(1,2,3,4)
	switch (_dir){
		case 1: y_frame = 1; Row = 0;	break;
		case 2: y_frame = 2; Row = 0;	break;
		case 3: y_frame = 0; Row = 0;	break;
		case 4:	x_frame = Row*3;	break;
	}
}
if (moveX = 0 && moveY = 0) {
		x_frame = Row*3;
}


// DRAW SPRITE
draw_sprite_part(spr_base,0,floor(x_frame)*_flamewidh,y_frame*_flameheight,_flamewidh,_flameheight,_XX,_YY);


// INCRIMENT FRAME ANIMATION
if(!returnflug){
	if(x_frame < _animelength*(Row+1))	{x_frame += _animespeed/60;}
	else						{returnflug = !returnflug;}
}else {
	if(x_frame > (Row*_animelength))	{x_frame -= _animespeed/60;x_frame =floor(x_frame);}
	else						{returnflug = !returnflug;}
}

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);