// UPDATE INPUT
speed = 0;
input_Left = keyboard_check(ord("A"));
input_Right = keyboard_check(ord("D"));
input_Up = keyboard_check(ord("W"));
input_Down = keyboard_check(ord("S"));

input_run = keyboard_check(vk_shift);
input_hide = keyboard_check(vk_control);
if(keyboard_check_pressed(ord("Z"))){global.pickupmode = !global.pickupmode}

// RESET MOVE VARIABLES
moveX = 0;
moveY = 0;
if(invisibletimecool <= damegeinvisibletime){
	invisibletimecool += 1;
}

// INTENDED MOVEMENT
if (input_hide || input_run) {
	spd = abs((input_hide*w_spd*n_spd) + (input_run*r_spd*n_spd));
} else {
	spd = n_spd;
}
//moveY = (input_Down - input_Up) * spd;
//moveX = (input_Right - input_Left) * spd;
inputDirection = point_direction(0,0,input_Right-input_Left,input_Down-input_Up);
inputmagnitude = (input_Right-input_Left != 0) || (input_Down-input_Up != 0);
moveX = lengthdir_x(inputmagnitude * spd,inputDirection);
moveY = lengthdir_y(inputmagnitude * spd,inputDirection);

// HideLevel hand over the obj_par_enemy
if(input_hide){
	with(obj_par_enemy){
		range_minus = other.HideLevel;
	}
} else {
	with(obj_par_enemy){
		range_minus = 0;
	}
}

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
if (moveX = 0 && moveY = 0) {
	spd = 0;
}
// COLLISION CHECKS
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
//particle FX
exhaustCounter++;
if(exhaustCounter >= 5 && spd != 0  && !input_hide){
	exhaustCounter = 0;
	var _len = sprite_height/2;
	var _XX = x - lengthdir_x(_len,point_direction(x,y,mouse_x,mouse_y))+irandom_range(-5,5);
	var _YY = y - lengthdir_y(_len,point_direction(x,y,mouse_x,mouse_y))+irandom_range(-5,5);
	create_particles(_XX,_YY,0,"obj_player");
}

x += moveX;
y += moveY;

// don't shoot pickupmode or showinventorymode
show_debug_message("RangeATK:"+string(RangeATK));
show_debug_message("Dexterity:"+string(Dexterity));

if(!global.show_inventory){
	// Shoot
	bltdir = point_direction(x,y,mouse_x,mouse_y);
	if (mouse_check_button(mb_left) && cooldown < 1) {
		create_attack(obj_bullet,RangeATK,bltdir,bltspd,faction,id,input_hide);
		cooldown = 5;
		}
	if (mouse_check_button(mb_right) && powerfullcooldown < 1) {
		create_attack(obj_missile,RangeATK,bltdir,bltspd,faction,id,input_hide);
		powerfullcooldown = 30;
	}
	if (mouse_check_button(mb_middle) && snipecooldown < 1) {
		var _bltspd = 20;
		create_attack(obj_snipe,RangeATK,bltdir,_bltspd,faction,id,input_hide);
		snipecooldown = 30;
	}
}
cooldown -= 1;
powerfullcooldown -= 1;
snipecooldown -= 1;

move_wrap(true,true,0)
//global.playerHP = HP
if(HP <= 0){
	instance_destroy();
}