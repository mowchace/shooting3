global.gamePaused = false;
global.textSpeed = 0.75;
global.targetroom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

Pausebltspeed = 0;
viewX = 0;
viewY = 0;

randomize();

enum factions {
	nutral,
	ally,
	enemy,
}

enum enemys{
	enemy1 = obj_enemy1, 
	enemy2 = obj_enemy2, 
	enemy3 = obj_enemy3,
	enemy4 = obj_enemy4,
	enemy5 = obj_enemy5,
}

enum nutrals{
	nutral1 = obj_tree, 
	nutral2 = obj_stump, 
	nutral3 = obj_bigrock,
	nutral4 = obj_slicerock,
	nutral5 = obj_midlerock,
}
//surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);

#region Player Status date
/*
if(file_exists("PlayerData.csv"))
	ds_characterData = load_csv("PlayerData.csv");
else{
	ds_characterData = ds_grid_create(25,3);
}
var _YY,_XX;
ds_grid_value_exists(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), 1){
	_XX = 1;
	_YY = ds_grid_value_y(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), 1);
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
*/
#endregion