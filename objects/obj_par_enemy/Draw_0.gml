event_inherited();
var col = c_white;
var _Searchplayerrange = Searchplayerrange-range_minus;
if(_Searchplayerrange <= range_base/4){_Searchplayerrange = range_base/4;}
var _view_range = view_range-range_minus;
if(_view_range <= view_range/4){_view_range = view_range/4;}
if(attack_flag) {
    // プレイヤーを見つけたら色を赤くする
    col = c_red;
}

// 視界範囲の右側を線分で描画
var dx1 = lengthdir_x(_Searchplayerrange, range_direction-_view_range);
var dy1 = lengthdir_y(_Searchplayerrange, range_direction-_view_range);
draw_line_colour(x, y, x+dx1, y+dy1, col, col);

// 視界範囲の左側を線分で描画
var dx2 = lengthdir_x(_Searchplayerrange, range_direction+_view_range);
var dy2 = lengthdir_y(_Searchplayerrange, range_direction+_view_range);
draw_line_colour(x, y, x+dx2, y+dy2, col, col);

// 視界範囲の先端の左右をつなぐ
draw_line_colour(x+dx1, y+dy1, x+dx2, y+dy2, col, col);

//８方向スプライト表示
if(sprite_8direction_switch){
	var _animelength = animelength;
	var _flamewidh = flamewidh;
	var _flameheight = flameheight;

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
	spritePart = draw_sprite_part(spr_base,0,floor(x_frame)*_flamewidh,y_frame*_flameheight,_flamewidh,_flameheight,_XX,_YY);

	// INCRIMENT FRAME ANIMATION
	if(!returnflug){
		if(x_frame < _animelength*(Row+1))	{x_frame += animespeed/60;}
		else						{returnflug = !returnflug;}
	}else {
		if(x_frame > (Row*_animelength))	{x_frame -= animespeed/60;x_frame =floor(x_frame);}
		else						{returnflug = !returnflug;}
	}
	
	// HPバー表示
	if(health_bar_draw){
		healthbar_x = x+healthbar_x_plus;
		healthbar_y = y-healthbar_y_plus;
		draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(HP/MaxHP)*healthbar_width,healthbar_height);
	}
}else{
	// HPバー表示
	if(health_bar_draw){
		healthbar_x = x;
		healthbar_y = y-sprite_height*3/4;
		draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(HP/MaxHP)*healthbar_width,healthbar_height);
	}
}

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);