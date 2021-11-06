/// @description
event_inherited();
faction = factions.enemy;

n_spd = 2;
w_spd = 0.5;
r_spd = 1.3;
spd = w_spd;
exhaustCounter = 0;

//state
enum states {
	idle,
	wander,
	alert,
	attack,
	evasion,
}
state = states.idle;
found_flag = false;

states_array[states.idle] = enemy_state_idle;
states_array[states.wander] = enemy_state_wander;
states_array[states.alert] = enemy_state_alert;
states_array[states.attack] = enemy_state_attack;
//------------------
counter = 0;
// Inseide range
rotate_speed = 1;
const_rotate_speed_time = room_speed*2;
rotate_speed_count = 0;
range_direction = direction;
range_plus = 0; 
range_minus = 0;
Searchplayerrange = 100;
view_range = 20;
actionWait = 0;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd,my_dir);
moveY = lengthdir_y(spd,my_dir);

//my_slash = noone;
/*
sprites_array[states.idle] = spr_idle;
sprites_array[states.wander] = spr_wander;
sprites_array[states.alert] = spr_alert;
sprites_array[states.attack] = spr_attack;
sprites_array[states.evasion] = spr_evasion;
sprite_index = sprites_array[state];

dialogue_array[states.idle]=["*Whistles*","Hmm."]
dialogue_array[states.alert]=["待て!","止まれ!"]

var len = array_length_1d(dialogue_array[state]);
text = dialogue_array[state[irandom_range(0,len-1)]];
*/
//Status Date

HP = Endurance*15;
EXP = (HP + Strength)*0.5;

// attack setting
attack = Strength;
atktype = asset_get_index(Attacktypename);
atkspd = Attackspeed;
cooltime = Attackcooltime;
cooldown = Attackcooldown;

//Sprite setting
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);
x_frame = 0;
y_frame = 0;
returnflug = false;
Row = 0;