event_inherited();
//var _flameheight = 60;
//var _XX = x-x_offset;
//var _YY = y-y_offset;

switch(state){
	case states.idle:
		sprite_index = spr_enemy4_idle;
	break;
	case states.wander:
		sprite_index = spr_enemy4_idle;
	break;
	case states.alert:
		sprite_index = spr_enemy4_alert;
	break;
	case states.attack:
		sprite_index = spr_enemy4_attack;
	break;
		//spr_base = spr_enemy4_alert;
		//var _animelength = 6;
		//var _flamewidh = 75;

	//	if(instance_exists(obj_player)){
	//		if (direction > 45 && direction <= 135) {
	//			y_frame = 1; Row = 0;
	//		//} else if (direction > 95 && direction <= 170) {
	//		//	//Left UP
	//		//	y_frame = 2; Row =1;
	//		} else if (direction > 135 && direction <= 225) {
	//			y_frame = 1; Row = 0; image_xscale = -1;
	//		} else if (direction > 225 && direction <= 315) {
	//			y_frame = 0; Row = 0;
	//		} else if (direction > 315 || direction <= 45) {
	//			y_frame = 4; Row = 0; _flamewidh = 60; _flameheight = 59; _animelength = 1;
	//		} else {
	//			y_frame = 1; Row = 0;
	//		}
	//	} else {
	//		var _dir = choose(1,2,3,4)
	//		switch (_dir){
	//			case 1: y_frame = 0; Row = 0;	break;
	//			case 2: y_frame = 0; Row = 0;	break;
	//			case 3: y_frame = 4; Row = 0;	break;
	//			case 4:	x_frame = Row*3;	break;
	//		}
	//	}
	//	if (moveX = 0 && moveY = 0) {
	//			x_frame = Row*3;
	//	}
	//	// DRAW SPRITE
	//	draw_sprite_part(spr_base,0,floor(x_frame)*_flamewidh,y_frame*_flameheight,_flamewidh,_flameheight,_XX,_YY);
	//	// INCRIMENT FRAME ANIMATION
	//	if(!returnflug){
	//		if(x_frame < _animelength*(Row+1))	{x_frame += animespeed/60;}
	//		else						{returnflug = !returnflug;}
	//	}else {
	//		if(x_frame > (Row*_animelength))	{x_frame -= animespeed/60;x_frame =floor(x_frame);}
	//		else						{returnflug = !returnflug;}
	//	}
	//draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
if(moveX != 0){
	image_xscale = -sign(moveX);
}
if(HP <= HP/3){
	sprite_index = spr_enemy4_damage;
}
draw_self();
