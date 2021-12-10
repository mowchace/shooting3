/// @description
event_inherited();
if(global.gamePaused){
	image_speed = 0;
	animespeed = 0;
	exit;
}else{
	image_speed = 10;
	animespeed = 10;
}
if(entityNPC == true){state = choose(states.idle,states.wander)};
if(alert_flag == true){state = states.alert};
if(attack_flag == true){state = states.attack};
script_execute(states_array[state])
if(entityNPC != true){
	if(rotate_speed_count >= const_rotate_speed_time){
		rotate_speed = -rotate_speed;
		rotate_speed_count = 0
	}
	range_direction += rotate_speed;
	if(instance_exists(obj_par_ally)){
		var _Searchplayerrange = Searchplayerrange+range_plus-range_minus;
		if(_Searchplayerrange <= (Searchplayerrange+range_plus)/3){_Searchplayerrange = (Searchplayerrange+range_plus)/3}
		var _view_range = view_range+range_plus-range_minus;
		if(_view_range <= (view_range+range_plus)/3){_view_range = (view_range+range_plus)/3}
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
					create_emotion(emotion.question);
					if(state != states.attack){
						moveX = 0;
						moveY = 0;
					}
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
}
//Collision check
Collision();

x += moveX;
y += moveY;

// APLLY MOVEMENT

// Exhaust
exhaustCounter++;
if(exhaustCounter >= 10 && spd != 0 && state != states.idle && state != states.wander){
	exhaustCounter = 0;
	create_dash_exhaust("obj_par_enemy");
}

if(HP <= 0){
	audio_play_sound(SE_gore06,1,0);
	instance_destroy();
}
move_wrap(true,true,0);