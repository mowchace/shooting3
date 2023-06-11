#region Player Status Section

//target obj_player
player_inst = obj_player;

CharacterDataID = 1;
//initialize player status
Name = "";
Equipment_weapon_1 = "";

Level = 0;
MaxHP = 0;
MaxHPPlus = 0;
HP = 0;
MaxMP = 0;
MaxMPPlus = 0;
MP = 0;
CarryWeight = 0;
CarryWeightPlus = 0;
Weight = 0;
MaxStamina = 0;
MaxStaminaPlus = 0;
Stamina = 0;
MaxSatiety = 0;
MaxSatietyPlus = 0;
Satiety = 0;
EXP = 0;
NextLevelEXP = 0;
Strength = 0;
StrengthPlus = 0;
Endurance = 0;
EndurancePlus = 0;
Dexterity = 0;
DexterityPlus = 0;
Perception = 0;
PerceptionPlus = 0;
Master = 0;
MasterPlus = 0;
Will = 0;
WillPlus = 0;
Magical_power = 0;
Magical_powerPlus = 0;
Charisma = 0;
CharismaPlus = 0;
Agility = 0;
AgilityPlus = 0;
Luck = 0;
LuckPlus = 0;

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
//----Attack Value
Strength_MeleeATK = 0;
Dexterity_MeleeATK = 0;
RangeATK = 0;
//----DEF Value
DEF = 0;
//----OF? Value
PRO = 0;
HideLevel = 0;

//Make ds_grid
if(file_exists("PlayerData.csv")){
		ds_characterData = load_csv("PlayerData.csv");
	}else{
		ds_characterData = ds_grid_create(25,3);
	}

#endregion