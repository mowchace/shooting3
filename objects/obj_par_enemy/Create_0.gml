/// @description
event_inherited();
faction = factions.enemy;

n_spd = 2;
w_spd = 0.5;
r_spd = 1.3;
spd = n_spd;
exhaustCounter = 0;

moveX = 0;
moveY = 0;

x_frame = 0;
Row = 0;
y_frame = 0;
returnflug = false;
//Status Date
HP = Endurance*15;
attack = Strength*1.5;
EXP = (HP + attack)*0.5;

//state
enum states {
	free,
	detect,
	alart,
	evasion,
}
state = states.free;

// Inseide range
rotate_speed = 1;
const_rotate_speed_time = room_speed*2;
rotate_speed_count = 0;
found_flag = false;
direction = irandom_range(1,355);
range_minus = 0;
Searchplayerrange = 200;
view_range = 20;
actionWait = 0;
findwait = 0;

// bullet setting
attack = Strength;
blttype = asset_get_index(blttypename);
bltspd = bullettspeed;
cooltime = bullettcooltime;
cooldown = bullettcooldown;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

// Idle move
alarm[0] = 30;