//get player status.
if(instance_exists(player_inst)){
	Name = player_inst.Name;
	Level = player_inst.Level;
	Equipment_weapon_1 = player_inst.Equipment_weapon_1;
	MaxHP = player_inst.MaxHP;
	MaxHPPlus = player_inst.MaxHPPlus;
	HP = player_inst.HP;
	MaxMP = player_inst.MaxMP;
	MaxMPPlus = player_inst.MaxMPPlus;
	MP = player_inst.MP;
	CarryWeight = player_inst.CarryWeight;
	CarryWeightPlus = player_inst.CarryWeightPlus;
	Weight = player_inst.Weight;
	MaxStamina = player_inst.MaxStamina;
	MaxStaminaPlus = player_inst.MaxStaminaPlus;
	Stamina = player_inst.Stamina;
	MaxSatiety = player_inst.MaxSatiety;
	MaxSatietyPlus = player_inst.MaxSatietyPlus;
	Satiety = player_inst.Satiety;
	EXP = player_inst.EXP;
	NextLevelEXP = player_inst.NextLevelEXP;
	Strength = player_inst.Strength;
	StrengthPlus = player_inst.StrengthPlus;
	Endurance = player_inst.Endurance;
	EndurancePlus = player_inst.EndurancePlus;
	Dexterity = player_inst.Dexterity;
	DexterityPlus = player_inst.DexterityPlus;
	Perception = player_inst.Perception;
	PerceptionPlus = player_inst.PerceptionPlus;
	Master = player_inst.Master;
	MasterPlus = player_inst.MasterPlus;
	Will = player_inst.Will;
	WillPlus = player_inst.WillPlus;
	Magical_power = player_inst.Magical_power;
	Magical_powerPlus = player_inst.Magical_powerPlus;
	Charisma = player_inst.Charisma;
	CharismaPlus = player_inst.CharismaPlus;
	Agility = player_inst.Agility;
	AgilityPlus = player_inst.AgilityPlus;
	Luck = player_inst.Luck;
	LuckPlus = player_inst.LuckPlus;
	
	//----Attack Value
	Strength_MeleeATK = player_inst.Strength_MeleeATK;
	Dexterity_MeleeATK = player_inst.Dexterity_MeleeATK;
	RangeATK = player_inst.RangeATK;
	//----DEF Value
	DEF = player_inst.DEF;
	//----OF? Value
	PRO = player_inst.PRO;
	HideLevel = player_inst.HideLevel;
}