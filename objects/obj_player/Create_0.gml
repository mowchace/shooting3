event_inherited();

global.pickupmode = false;

faction = factions.ally;

n_spd = 5;
w_spd = 0.5;
r_spd = 1.3;
exhaustCounter = 0;

base_x = 5;
base_y = 20;

healthbar_width = 100;
healthbar_height = 18;
healthbar_x = 5;
healthbar_y = 5+base_y;

hideLevel = 10;

cooldown = 0;
powerfullcooldown = 0;
snipecooldown = 0;


attack = 50;
x_frame = 0;
Row = 0;
y_frame = 0;
returnflug = false;

damegeinvisibletime = 5;
invisibletimecool = 5;

// bullet setting
bltdir = 0;
bltspd = 16;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

//Player Status
NextLevelbaseEXP = 50;
if(file_exists("PlayerData.csv"))
	ds_characterData = load_csv("PlayerData.csv");
else{
	ds_characterData = ds_grid_create(25,3);
}

var _YY,_XX;
ds_grid_value_exists(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), CharacterDataID){
	_XX = 1;
	_YY = ds_grid_value_y(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), CharacterDataID);
	Name = ds_characterData[# _XX++,_YY];
	Level = ds_characterData[# _XX++,_YY];
	MaxHP = ds_characterData[# _XX++,_YY];
	HP = ds_characterData[# _XX++,_YY];
	MaxMP = ds_characterData[# _XX++,_YY];
	MP = ds_characterData[# _XX++,_YY];
	CarryWeight = ds_characterData[# _XX++,_YY];
	Weight = ds_characterData[# _XX++,_YY];
	MaxStamina = ds_characterData[# _XX++,_YY];
	Stamina = ds_characterData[# _XX++,_YY];
	MaxSatiety = ds_characterData[# _XX++,_YY];
	Satiety = ds_characterData[# _XX++,_YY];
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
	NextLevelEXP = ds_characterData[# _XX++,_YY];
}

Level -= 0;
MaxHP -= 0;
HP -= 0;
MaxMP -= 0;
MP -= 0;
CarryWeight -= 0;
Weight -= 0;
MaxStamina -= 0;
Stamina -= 0;
MaxSatiety -= 0;
Satiety -= 0;
Strength -= 0;
Endurance -= 0;
Dexterity -= 0;
Perception -= 0;
Master -= 0;
Will -= 0;
Magical_power -= 0;
Charisma -= 0;
Agility -= 0;
Luck -= 0;
EXP -= 0;
NextLevelEXP = 50;
