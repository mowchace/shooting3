var _animelength = 3;
var _flamewidh = 14;
var _flameheight = 20;
var _animespeed = 10;
var _direction = point_direction(x,y,mouse_x,mouse_y);

var _XX = x-x_offset;
var _YY = y-y_offset;

if (_direction > 45 && _direction <= 135) {
	y_frame = 3; Row = 0;
//} else if (_direction > 95 && _direction <= 170) {
//	//Left UP
//	y_frame = 2; Row =1;
} else if (_direction > 135 && _direction <= 225) {
	y_frame = 1; Row = 0;
} else if (_direction > 225 && _direction <= 315) {
	y_frame = 0; Row = 0;
} else if (_direction > 315 || _direction <= 45) {
	y_frame = 2; Row = 0;
}
if (moveX = 0 && moveY = 0) {
	x_frame = Row*3;
}

// DRAW SPRITE
draw_sprite_part(spr_player,0,floor(x_frame)*_flamewidh,y_frame*_flameheight,_flamewidh,_flameheight,_XX,_YY);

// INCRIMENT FRAME ANIMATION
if(!returnflug){
	if(x_frame < _animelength*(Row+1))	{x_frame += _animespeed/60;}
	else						{returnflug = !returnflug;}
}else {
	if(x_frame > (Row*_animelength))	{x_frame -= _animespeed/60;x_frame =floor(x_frame);}
	else						{returnflug = !returnflug;}
}

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);