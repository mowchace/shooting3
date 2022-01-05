/// @description
event_inherited();
faction = factions.enemy;
animespeed = 10;

n_spd = 2;
w_spd = 0.5;
r_spd = 1.3;
spd = w_spd;
exhaustCounter = 0;
flash = 0;
throu_flag = 1;

healthbar_width = 10;
healthbar_height = 2;
healthbar_x = 0;
healthbar_y = 0;
healthbar_x_plus = 0;
healthbar_y_plus = 22;

//state
enum states {
	stop,
	idle,
	wander,
	alert,
	attack,
}
state = states.idle;
laststate = state;
attack_flag = false;
attack_time = 0;
alert_flag = false;
alert_time = 0;

//------------------
counter = 0;
// player seach range
rotate_speed = 1;
const_rotate_speed_time = room_speed*2;
rotate_speed_count = 0;
range_direction = direction;
range_base = Seach_range_base;
range_plus = 0; 
range_minus = 0;
Searchplayerrange = Seach_range_base*2;
view_range = 20;


my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd,my_dir);
moveY = lengthdir_y(spd,my_dir);

spr_base = noone;
spr_idle = spr_base;
spr_wander = spr_base;
spr_alert = spr_base;
spr_attack = spr_base;

states_array[states.stop] = stateLocked;
states_array[states.idle] = enemy_state_idle;
states_array[states.wander] = enemy_state_wander;
states_array[states.alert] = enemy_state_alert;
states_array[states.attack] = enemy_state_attack;

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

MaxHP = Endurance*15;
HP = MaxHP;
//　防御
DEF = random_range(Endurance,Endurance*1.5);
//　回避
PRO = random_range(Endurance,Endurance*1.5);
EXP = (MaxHP + Strength)*0.5;

// attack setting
attack = Strength;
Meelatktype1 = asset_get_index(MeelAttacktypename1);
Rangeatktype1 = asset_get_index(RangeAttacktypename1);
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

// SE
deth_SE = SE_gore06;