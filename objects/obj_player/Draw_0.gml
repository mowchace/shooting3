 event_inherited();
var _animelength = 3;
var _flamewidh = 14;
var _flameheight = 20;

var _XX = x-x_offset;
var _YY = y-y_offset;

if (direction > 337 || direction <= 21) {
	//Right
	y_frame = 2; Row = 0;
} else if (direction > 22 && direction <= 67) {
	//Right Up
	y_frame = 3; Row = 1;
} else if (direction > 67 && direction <= 113) {
	//Up
	y_frame = 3; Row = 0;
} else if (direction > 113 && direction <= 167) {
	//Left Up
	y_frame = 2; Row = 1;
} else if (direction > 167 && direction <= 203) {
	//Left
	y_frame = 1; Row = 0;
} else if (direction > 203 && direction <= 247) {
	//Left Down
	y_frame = 0; Row = 1;
} else if (direction > 247 && direction <= 293) {
	//Down
	y_frame = 0; Row = 0;
} else if (direction > 293 && direction <= 337) {
	//Right Down
	y_frame = 1; Row = 1;
}

if (moveX = 0 && moveY = 0) {
	x_frame = Row*3+1;
}
// DRAW SPRITE
draw_sprite_part(spr_player,0,floor(x_frame)*_flamewidh,floor(y_frame)*_flameheight,_flamewidh,_flameheight,floor(_XX),floor(_YY-z));

// INCRIMENT FRAME ANIMATION
if(!returnflug){
	if(x_frame < _animelength*(Row+1)){x_frame += animespeed/60;}
	else{returnflug = !returnflug;}
}else {
	if(x_frame > (Row*_animelength)){x_frame -= animespeed/60;}
	else						{returnflug = !returnflug;}
}

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);