/// @description

if(rotate_speed_count >= const_rotate_speed_time){
	rotate_speed = -rotate_speed;
	rotate_speed_count = 0
}
direction += rotate_speed;

if(instance_exists(obj_par_ally)){
	var _Searchplayerrange = Searchplayerrange-range_minus;
	var _view_range = view_range-range_minus;
	// player seach start
	if(point_distance(x,y,obj_par_ally.x,obj_par_ally.y) < _Searchplayerrange){
		// Serch move
		var _x1 = lengthdir_x(1, direction);
		var _y1 = lengthdir_y(1, direction);
		
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
				state = states.alart;
				found_flag = true;
				var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y)
				direction = _dir;
				actionWait = 250;
				// move near the player
				//if (point_distance(x, y, obj_par_ally.x, obj_par_ally.y) > dashrange){
				spd = n_spd *r_spd;
				moveX = lengthdir_x(spd,_dir);
				moveY = lengthdir_y(spd,_dir);
				//} else {
				//	spd = n_spd;
				//}
				if(inst == noone && cooltime <= 0){
					var _bltdir = _dir;
					create_bullet(blttype,attack,_bltdir,bltspd,faction,id,noone);
					cooltime = cooldown;
				}
			}
		} else {
			spd = n_spd;
			moveX = 0;
			moveY = 0;
			if(found_flag){
				state = states.detect;
				alarm[1] = 5;
			}
		}
	} 
}
actionWait -= 1;
cooltime -= 1;
rotate_speed_count += 1

// bullet shoot

//cooltime -= 1;
// GET DIRECTION PLAYER IS FACING
/*
var _direction = point_direction(obj_Player.x,obj_Player.y,mouse_x,mouse_y);
if (_direction > 45 && _direction <= 135) {
	facing = dir.up;
} else if (_direction > 135 && _direction <= 225) {
	facing = dir.left;
} else if (_direction > 225 && _direction <= 315) {
	facing = dir.down;
} else if (_direction > 315 || _direction <= 45) {
	facing = dir.right;
}
if (moveX = 0 && moveY = 0) {
	x_frame = 0;
}
*/
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




/*
// Objects
var _inst = instance_place(x,y,obj_trandition);
if (_inst != noone && facing == _inst.playerFancingBefore) {
	with (obj_game) {
		if (!doTrandition) {
			spawnRoom = _inst.targetRoom;
			spawnX = _inst.targetX;
			spawnY = _inst.targetY;
			spawnPlayerFacing = _inst.playerFancingAfter;
			doTrandition = true;
		}
	}
	
}
*/

// APLLY MOVEMENT
//exhaust
exhaustCounter++;
if(exhaustCounter >= 10 && spd != 0 && state != states.free){
	exhaustCounter = 0;
	var _len = sprite_height/2;
	var _XX = x - lengthdir_x(_len,direction)+irandom_range(-5,5);
	var _YY = y - lengthdir_y(_len,direction)+irandom_range(-5,5);
	create_particles(_XX,_YY,0,"obj_par_enemy");
}
x += moveX;
y += moveY;

if(HP <= 0){
	audio_play_sound(SE_gore06,1,0);
	instance_destroy();
	with (obj_player){
		attack += other.EXP*0.1;
		HP += 10;
	}
	create_particles(x,y,180,"obj_blad");
	var _instmeat = instance_create_layer(x,y,"Instances",obj_meat);
	with (obj_game){score += other.EXP;}
}
move_wrap(true,true,0);
