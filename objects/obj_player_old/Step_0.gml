event_inherited();
//if game pousing.exit step event
if(global.gamePaused){
	//stop animetion speed
	animespeed = 0;
	 exit;
}else{
	//begin animetion
	animespeed = 10;
}

#region UPDATE INPUT
//---?
speed = 0;
//character direction turn of the mousepointer
direction = point_direction(x,y,mouse_x,mouse_y)
//keyboard check section
input_Left = keyboard_check(ord("A"));
input_Right = keyboard_check(ord("D"));
input_Up = keyboard_check(ord("W"));
input_Down = keyboard_check(ord("S"));

//Dash
input_run = keyboard_check(vk_shift);
//Hide
input_hide = keyboard_check(vk_control);
//Emergency Dash
input_action = keyboard_check_pressed(vk_space);
//talk and etc action
input_action_E = keyboard_check_pressed(ord("E"));
//Item pick up
if(keyboard_check_pressed(ord("Z"))){global.pickupmode = !global.pickupmode}
#endregion

//RESET MOVE VARIABLES
moveX = 0;
moveY = 0;
//if get damege point.apper Invisible time
if(invisibletimecool <= damegeinvisibletime){
	invisibletimecool += 1;
}

// INTENDED MOVEMENT
if (input_hide || input_run) {
	spd = abs((input_hide*w_spd*normal_speed) + (input_run*r_spd*normal_speed));
} else {
	spd = normal_speed;
}

inputDirection = point_direction(0,0,input_Right-input_Left,input_Down-input_Up);
inputmagnitude = (input_Right-input_Left != 0) || (input_Down-input_Up != 0);

// Change playerstate
if(input_action){
	if(playerstate != playerstate_bonk){
		playerstate = playerstate_roll;
		moveDistanceRemaining = roll_distance;
	}
}


if(input_action_E){
	#region Activekey logic Shawn
	var _radius = 10;
	activate = collision_rectangle(x-_radius,y-_radius,x+_radius,y+_radius,obj_par_entities,1,1);
	
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
	#endregion
}
script_execute(playerstate);

x += moveX;
y += moveY;

// don't shoot pickupmode or showinventorymode
if(!global.show_inventory){
	// Shoot
	direction = point_direction(x,y,mouse_x,mouse_y);
	if (mouse_check_button(mb_left) && cooldown < 1) {
		switch(Equipment_weapon_1){
			case "obj_punch":{
				create_melee_attack(asset_get_index(Equipment_weapon_1),Strength_MeleeATK,direction,0,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
			}break;
			default:{
				create_range_attack(asset_get_index(Equipment_weapon_1),RangeATK,direction,bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
			}break
		}
		cooldown = 5;
		}
	if (mouse_check_button(mb_right) && powerfullcooldown < 1) {
		create_range_attack(obj_missile,RangeATK,direction,bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		powerfullcooldown = 30;
	}
	if (mouse_check_button(mb_middle) && snipecooldown < 1) {
		var _bltspd = 20;
		create_range_attack(obj_snipe,RangeATK,direction,_bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		snipecooldown = 30;
	}
}
cooldown -= 1;
powerfullcooldown -= 1;
snipecooldown -= 1;
//move_wrap(true,true,0)
depth = -bbox_bottom;
//global.playerHP = HP
if(HP <= 0){
	instance_destroy();
}