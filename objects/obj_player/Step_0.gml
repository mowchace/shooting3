event_inherited();
if(global.gamePaused){
	animespeed = 0;
	 exit;
}else{
	animespeed = 10;
}
// UPDATE INPUT
speed = 0;
direction = point_direction(x,y,mouse_x,mouse_y)
input_Left = keyboard_check(ord("A"));
input_Right = keyboard_check(ord("D"));
input_Up = keyboard_check(ord("W"));
input_Down = keyboard_check(ord("S"));

input_run = keyboard_check(vk_shift);
input_hide = keyboard_check(vk_control);
input_action = keyboard_check_pressed(vk_space);
input_action_other = keyboard_check_pressed(ord("E"));
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

// Change state
if(input_action){
	state = playerstate_roll;
	moveDistanceRemaining = roll_distance;
}
// Activekey logic
if(input_action_other){
	var _activateX = lengthdir_x(10,direction);
	var _activateY = lengthdir_y(30,direction);
	activate = instance_position(x+_activateX,y+_activateY,obj_par_entities);
	
	if(activate != noone && activate.entityActivateScript != -1){
		scr_ExcuteArray(activate.entityActivateScript,activate.entityActivateArgs);
		// Make an npc face the player
		if(activate.entityNPC){
			with(activate){
				direction = point_direction(x,y,other.x,other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}
script_execute(state);


attack_positionX = x;
attack_positionY = y-5;
attack_particlepositionX = x;
attack_particlepositionY = y-sprite_height/3;

// don't shoot pickupmode or showinventorymode
if(!global.show_inventory){
	// Shoot
	direction = point_direction(x,y,mouse_x,mouse_y);
	if (mouse_check_button(mb_left) && cooldown < 1) {
		create_attack(obj_bullet,RangeATK,direction,bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		cooldown = 5;
		}
	if (mouse_check_button(mb_right) && powerfullcooldown < 1) {
		create_attack(obj_missile,RangeATK,direction,bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		powerfullcooldown = 30;
	}
	if (mouse_check_button(mb_middle) && snipecooldown < 1) {
		var _bltspd = 20;
		create_attack(obj_snipe,RangeATK,direction,_bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		snipecooldown = 30;
	}
}
cooldown -= 1;
powerfullcooldown -= 1;
snipecooldown -= 1;
move_wrap(true,true,0)
depth = -bbox_bottom;
//global.playerHP = HP
if(HP <= 0){
	instance_destroy();
}