 event_inherited();
 //if hiding image alpha = .5
 if(input_hide){i_alpha = 0.5}else{i_alpha = 1;}
 
#region var setting
var _animelength = 4;
var _flamewidh = 14;
var _flameheight = 20;

var _XX = x-x_offset;
var _YY = y-y_offset;
#endregion

//moving check
//direction sprite
y_frame = floor(direction/45);
if(moveX !=0 || moveY != 0){
	//Increment Frame for animetion
	x_frame += animespeed/room_speed;
	if(x_frame >= _animelength) x_frame = 0
}else{
	//idle.x_frame = 0.9 is change sprite litle quick
	x_frame = 0.9;
}

// DRAW SPRITE
draw_sprite_part_ext(spr_player_8direc,0,floor(x_frame)*_flamewidh,y_frame*_flameheight,_flamewidh,_flameheight,floor(_XX),floor(_YY-z),1,1,c_white,i_alpha);

//colision check rectangle
draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);