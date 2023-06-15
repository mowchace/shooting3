event_inherited();
//if game pousing or show inventry active.exit step event
#region action stop
if(global.gamePaused || global.show_inventory){
	//stop animetion speed
	animespeed = 0;
	 exit;
}else{
	//begin animetion
	animespeed = 10;
}
#endregion

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

#region move action
//RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

// INTENDED MOVEMENT
if (input_hide || input_run) {
	spd = abs(((input_hide*w_spd) + (input_run*r_spd))*normal_speed);
} else {
	spd = normal_speed;
}

inputDirection = point_direction(0,0,input_Right-input_Left,input_Down-input_Up);
inputmagnitude = (input_Right-input_Left != 0) || (input_Down-input_Up != 0);

// Rolling dash action
if(input_action){
	//if player not staning.action dash
	if(playerstate != playerstate_bonk){
		playerstate = playerstate_roll;
		moveDistanceRemaining = roll_distance;
	}
}

script_execute(playerstate);

x += moveX;
y += moveY;
#endregion

#region talk pickup(kari)
// action Talk and pick up
if(input_action_E){
	#region Activekey logic Shawn
	// action effective range
	var _radius = 10;
	activate = collision_rectangle(x-_radius,y-_radius,x+_radius,y+_radius,obj_par_entities,1,1);
	
	// action logic
	//if(activate != noone && activate.entityActivateScript != -1){
	//	scr_ExcuteArray(activate.entityActivateScript,activate.entityActivateArgs);
	//	// Make an npc face the player
	//	if(activate.entityNPC){
	//		with(activate){
	//			direction = point_direction(x,y,other.x,other.y);
	//			image_index = CARDINAL_DIR;
	//		}
	//	}
	//}
	#endregion
}
#endregion


#region attack
	direction = point_direction(x,y,mouse_x,mouse_y);
	if (mouse_check_button(mb_left) && cooldown < 1) {
		//create bullet shot_gun
		create_range_attack_shot_gun(asset_get_index(Equipment_weapon_1),RangeATK,5,direction,bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		
		//create bullet machin_gun
		//create_range_attack(obj_bullet,RangeATK,direction+irandom_range(-_blt_num,_blt_num),bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		//switch(Equipment_weapon_1){
		//	case "obj_punch":{
		//		create_melee_attack(asset_get_index(Equipment_weapon_1),Strength_MeleeATK,direction,0,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		//	}break;
		//	default:{
		//		create_range_attack(asset_get_index(Equipment_weapon_1),RangeATK,direction,bltspd,faction,id,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		//	}break
		//}
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
cooldown -= 1;
powerfullcooldown -= 1;
snipecooldown -= 1;

#endregion
//move_wrap(true,true,0)

//this switch on.player highest depth
//depth = -bbox_bottom;

//obj_player_status.HP = HP
if(obj_players_status.HP <= 0){
	instance_destroy();
}