/// @description
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
			if(inst == noone){
				var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y)
				range_direction = _dir;
				if(state = !states.attack){
					state = states.alert;
				}
			}
		} 

	} 
}
script_execute(states_array[state])

rotate_speed_count += 1
if(found_time > 0){found_time -= 1};
// Find_flag remove
if(found_time <= 0){
	found_flag = false;
};
// Attack cool down
if(!cooltime <= 0){cooltime -= 1;}
show_debug_message("found_time:"+string(found_time));
show_debug_message("cooltime:"+string(cooltime));
show_debug_message("counter:"+string(counter));

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
	// Not Go to outside room
	if(x < 0 || x > room_width){
		moveX = -moveX;
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
	// Not Go to outside room
	if(y < 0 || y > room_height){
		moveY = -moveY;
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
show_debug_message("state:"+string(state))