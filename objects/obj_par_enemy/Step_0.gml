/// @description
script_execute(states_array[state])
/*
if(instance_exists(obj_par_ally)){
	var _Searchplayerrange = Searchplayerrange-range_minus;
	var _view_range = view_range-range_minus;
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
			if(inst == noone || found_flag = true){
				state = states.alert;
				found_flag = true;
				var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y)
				direction = _dir;
				range_direction = _dir;
				actionWait = 250;
				// move near the player
				//if (point_distance(x, y, obj_par_ally.x, obj_par_ally.y) > dashrange){
				spd = r_spd;
				moveX = lengthdir_x(spd,_dir);
				moveY = lengthdir_y(spd,_dir);
				//} else {
				//	spd = n_spd;
				//}
				if(inst == noone && cooltime <= 0){
					var _bltdir = _dir;
					create_bullet(atktype,attack,_bltdir,bltspd,faction,id,noone);
					cooltime = cooldown;
				}
			}
		} 
		else {
			spd = n_spd;
			moveX = 0;
			moveY = 0;
			if(found_flag){
				state = states.wander;
				alarm[1] = 5;
			}
		}
	} 
}
*/
actionWait -= 1;
rotate_speed_count += 1

// Attack cool down
if(!cooltime < 0){cooltime -= 1;}

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