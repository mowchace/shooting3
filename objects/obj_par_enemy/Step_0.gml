/// @description
//if(wander_flag == true){state = states.wander};
if(alert_flag == true){state = states.alert};
if(attack_flag == true){state = states.attack};
script_execute(states_array[state])
if(rotate_speed_count >= const_rotate_speed_time){
	rotate_speed = -rotate_speed;
	rotate_speed_count = 0
}
range_direction += rotate_speed;
if(instance_exists(obj_par_ally)){
	var _Searchplayerrange = Searchplayerrange+range_plus-range_minus;
	var _view_range = view_range+range_plus-range_minus;
	// player seach start
	if(point_distance(x,y,obj_par_ally.x,obj_par_ally.y) < _Searchplayerrange){
		// Serch move
		var _x1 = lengthdir_x(1, range_direction);
		var _y1 = lengthdir_y(1, range_direction);
		
		var _x2 =  obj_par_ally.x - x;
		var _y2 =  obj_par_ally.y - y;
		// obj_par_ally distance
		var _dot = dot_product_normalized(_x1,_y1,_x2,_y2);
		// obj_par_ally direction
		var _deg = darccos(_dot);
		// player find
		if(_view_range > _deg){
			var inst = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_collision, false, true);
			var inst2 = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_par_enemy, false, true);
			var inst3 = collision_line(x, y, obj_par_ally.x, obj_par_ally.y, obj_par_nutral, false, true);
			var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y)
			if(inst == noone && inst2 == noone && inst3 == noone){
				if(state == states.idle || state == states.wander){create_emotion(emotion.question);}
				else if(state == states.alert){create_emotion(emotion.alertextensyon);}
				else if(state == states.attack){create_emotion(emotion.attackextensyon);}
				range_direction = _dir;
				moveX = lengthdir_x(spd,_dir);
				moveY = lengthdir_y(spd,_dir);
			} else {
				if(state == states.attack){
					create_emotion(emotion.question);
				}
				moveX = 0;
				moveY = 0;
			}
		} 

	} 
}



rotate_speed_count += 1
if(attack_flag == true){
	attack_time -= 1
	// Find_flag remove
	if(attack_time <= 0){
		attack_flag = false;
		state = states.wander;
		spd = r_spd;
	};
};
if(alert_flag == true){
	alert_time -= 1
	//Alert flag remove
	if(!attack_flag){
		if(alert_time <= 0){
			create_emotion(emotion.question);
			alert_flag = false;
			range_plus = 0;
		}
	}
}

// Attack cool down
if(!cooltime <= 0){cooltime -= 1;}

// COLLISION CHECKS and room in
if(moveX != 0){
	if(place_meeting(x+moveX,y,obj_collision) || place_meeting(x+moveX,y,obj_faction)){
		repeat(abs(moveX)){
			if (!place_meeting(x+sign(moveX),y,obj_collision) && !place_meeting(x+sign(moveX),y,obj_faction)){
				x += sign(moveX);
			} else {break;}
		}
		moveX = 0;
	}
}
// VARTICAL
if(moveY != 0){
	if(place_meeting(x,y+moveY,obj_collision) || place_meeting(x,y+moveY,obj_faction)){
		repeat(abs(moveY)){
			if (!place_meeting(x,y+sign(moveY),obj_collision) && !place_meeting(x,y+sign(moveY),obj_faction)){
				y += sign(moveY);
			} else {break;}
		}
		moveY = 0;
	}
}

x += moveX;
y += moveY;
// APLLY MOVEMENT

// Exhaust
exhaustCounter++;
if(exhaustCounter >= 10 && spd != 0 && state != states.idle && state != states.wander){
	exhaustCounter = 0;
	var _len = sprite_height/2;
	var _XX = x - lengthdir_x(_len,direction)+irandom_range(-5,5);
	var _YY = y - lengthdir_y(_len,direction)+irandom_range(-5,5);
	create_particles(_XX,_YY,0,"obj_par_enemy");
}

if(HP <= 0){
	audio_play_sound(SE_gore06,1,0);
	instance_destroy();
}
move_wrap(true,true,0);