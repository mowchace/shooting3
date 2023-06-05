event_inherited();
playerstate = playerstate_free;
laststate = playerstate;

global.pickupmode = false;
//room_ext spawn draw
input_hide = false;

//trandition respawn
if(global.targetX != -1){
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}

faction = factions.ally;

normal_speed = 5;
w_spd = 0.5;
r_spd = 1.3;
roll_speed = 10;
roll_distance = 64;
bonk_speed = 2;
bonk_distance = 64;
bonk_distanceheight = 24;
z = 0;

exhaustCounter = 0;
animespeed = 10;

draw_base_x = 5;
draw_base_y = 20;

healthbar_width = 100;
healthbar_height = 18;
healthbar_x = 5;
healthbar_y = 5+draw_base_y;


cooldown = 0;
powerfullcooldown = 0;
snipecooldown = 0;
throu_flag = 1;

x_frame = 0;
Row = 0;
y_frame = 0;
returnflug = false;



damegeinvisibletime = 5;

// bullet setting
bltdir = 0;
bltspd = 16;



//Player Status
NextLevelbaseEXP = 50;

#region Player status date

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
	Equipment_weapon_1 = ds_characterData[# _XX++,_YY];
	MaxHP = ds_characterData[# _XX++,_YY];
	MaxHPPlus = ds_characterData[# _XX++,_YY];
	HP = ds_characterData[# _XX++,_YY];
	MaxMP = ds_characterData[# _XX++,_YY];
	MaxMPPlus = ds_characterData[# _XX++,_YY];
	MP = ds_characterData[# _XX++,_YY];
	CarryWeight = ds_characterData[# _XX++,_YY];
	CarryWeightPlus = ds_characterData[# _XX++,_YY];
	Weight = ds_characterData[# _XX++,_YY];
	MaxStamina = ds_characterData[# _XX++,_YY];
	MaxStaminaPlus = ds_characterData[# _XX++,_YY];
	Stamina = ds_characterData[# _XX++,_YY];
	MaxSatiety = ds_characterData[# _XX++,_YY];
	MaxSatietyPlus = ds_characterData[# _XX++,_YY];
	Satiety = ds_characterData[# _XX++,_YY];
	EXP = ds_characterData[# _XX++,_YY];
	NextLevelEXP = ds_characterData[# _XX++,_YY];
	Strength = ds_characterData[# _XX++,_YY];
	StrengthPlus = ds_characterData[# _XX++,_YY];
	Endurance = ds_characterData[# _XX++,_YY];
	EndurancePlus = ds_characterData[# _XX++,_YY];
	Dexterity = ds_characterData[# _XX++,_YY];
	DexterityPlus = ds_characterData[# _XX++,_YY];
	Perception = ds_characterData[# _XX++,_YY];
	PerceptionPlus = ds_characterData[# _XX++,_YY];
	Master = ds_characterData[# _XX++,_YY];
	MasterPlus = ds_characterData[# _XX++,_YY];
	Will = ds_characterData[# _XX++,_YY];
	WillPlus = ds_characterData[# _XX++,_YY];
	Magical_power = ds_characterData[# _XX++,_YY];
	Magical_powerPlus = ds_characterData[# _XX++,_YY];
	Charisma = ds_characterData[# _XX++,_YY];
	CharismaPlus = ds_characterData[# _XX++,_YY];
	Agility = ds_characterData[# _XX++,_YY];
	AgilityPlus = ds_characterData[# _XX++,_YY];
	Luck = ds_characterData[# _XX++,_YY];
	LuckPlus = ds_characterData[# _XX++,_YY];
}

#endregion

Level -= 0;
MaxHP -= 0;
MaxHPPlus -= 0;
HP -= 0;
MaxMP -= 0;
MaxMPPlus -= 0;
MP -= 0;
CarryWeight -= 0;
CarryWeightPlus -= 0;
Weight -= 0;
MaxStamina -= 0;
MaxStaminaPlus -= 0;
Stamina -= 0;
MaxSatiety -= 0;
MaxSatietyPlus -= 0;
Satiety -= 0;
EXP -= 0;
NextLevelEXP -= 0;
Strength -= 0;
StrengthPlus -= 0;
Endurance -= 0;
EndurancePlus -= 0;
Dexterity -= 0;
DexterityPlus -= 0;
Perception -= 0;
PerceptionPlus -= 0;
Master -= 0;
MasterPlus -= 0;
Will -= 0;
WillPlus -= 0;
Magical_power -= 0;
Magical_powerPlus -= 0;
Charisma -= 0;
CharismaPlus -= 0;
Agility -= 0;
AgilityPlus -= 0;
Luck -= 0;
LuckPlus -= 0;

Equipment_StrengthMeleeATK_point = 0;
Equipment_DexterityMeleeATK_point = 0;
Equipment_RangeATK_point = 0;
//Equipment_DEF_head = 0;
//Equipment_DEF_nec = 0;
//Equipment_DEF_body = 0;
//Equipment_DEF_arm = 0;
//Equipment_DEF_Waist = 0;
//Equipment_DEF_leg = 0;
//Equipment_DEF_finger = 0;
Equipment_DEF_point = 0;
Equipment_PRO_point = 0;
// 攻撃
Strength_MeleeATK = ((Strength+StrengthPlus)+(Dexterity+DexterityPlus)/10)+(Strength+StrengthPlus)/10*Equipment_StrengthMeleeATK_point;
Dexterity_MeleeATK = (Strength+StrengthPlus)/10+(Dexterity+DexterityPlus)/10*Equipment_DexterityMeleeATK_point;
RangeATK = ((Dexterity+DexterityPlus)+(Perception+PerceptionPlus))+Equipment_RangeATK_point;
//　防御
DEF = (Endurance+EndurancePlus)+Equipment_DEF_point;
//　回避
PRO = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)+Equipment_PRO_point;
HideLevel = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)/5;
