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

//Status Data
ds_characterData = load_csv("CharacterEnemysData.csv");

var _YY,_XX;
ds_grid_value_exists(ds_characterData, 0, 0, 0, 10, CharacterDataID){
	_XX = 1;
	_YY = ds_grid_value_y(ds_characterData, 0, 0, 0, 10, CharacterDataID)+1;
	Name = ds_characterData[# _XX++,_YY];
	HP = ds_characterData[# _XX++,_YY];
	MP = ds_characterData[# _XX++,_YY];
	Strength = ds_characterData[# _XX++,_YY];
	Endurance = ds_characterData[# _XX++,_YY];
	Dexterity = ds_characterData[# _XX++,_YY];
	Perception = ds_characterData[# _XX++,_YY];
	Master = ds_characterData[# _XX++,_YY];
	Will = ds_characterData[# _XX++,_YY];
	Magical_power = ds_characterData[# _XX++,_YY];
	Charisma = ds_characterData[# _XX++,_YY];
	Agility = ds_characterData[# _XX++,_YY];
	Luck = ds_characterData[# _XX++,_YY];
	EXP = ds_characterData[# _XX++,_YY];
	DropItem1 = ds_characterData[# _XX++,_YY];
	DropItem1_Max_num = ds_characterData[# _XX++,_YY];
	DropItem1_minimam_num = ds_characterData[# _XX++,_YY];
	DropItem1_Drop_Percentage = ds_characterData[# _XX++,_YY];
	DropItem2 = ds_characterData[# _XX++,_YY];
	DropItem2_Max_num = ds_characterData[# _XX++,_YY];
	DropItem2_minimam_num = ds_characterData[# _XX++,_YY];
	DropItem2_Drop_Percentage = ds_characterData[# _XX++,_YY];
	DropItem3 = ds_characterData[# _XX++,_YY];
	DropItem3_Max_num = ds_characterData[# _XX++,_YY];
	DropItem3_minimam_num = ds_characterData[# _XX++,_YY];
	DropItem3_Drop_Percentage = ds_characterData[# _XX++,_YY];
}

//state
/*enum states {
	free,
	detect,
	alart,
	evasion,
}*/
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
attack = 0;
blttype = noone;
bltspd = 5;
cooltime = 50;
cooldown = 50;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

// Destroy setting
HP = -1;
EXP = -1;
spawnPointPlus = 0;

// Idle move
alarm[0] = 30;