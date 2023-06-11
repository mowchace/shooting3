if(instance_exists(player_inst)){
	//put player status date;
	with(player_inst){
		Name = other.Name;
		Level = other.Level;
		Equipment_weapon_1 = other.Equipment_weapon_1;
		MaxHP = other.MaxHP;
		MaxHPPlus = other.MaxHPPlus;
		HP = other.HP;
		MaxMP = other.MaxMP;
		MaxMPPlus = other.MaxMPPlus;
		MP = other.MP;
		CarryWeight = other.CarryWeight;
		CarryWeightPlus = other.CarryWeightPlus;
		Weight = other.Weight;
		MaxStamina = other.MaxStamina;
		MaxStaminaPlus = other.MaxStaminaPlus;
		Stamina = other.Stamina;
		MaxSatiety = other.MaxSatiety;
		MaxSatietyPlus = other.MaxSatietyPlus;
		Satiety = other.Satiety;
		EXP = other.EXP;
		NextLevelEXP = other.NextLevelEXP;
		Strength = other.Strength;
		StrengthPlus = other.StrengthPlus;
		Endurance = other.Endurance;
		EndurancePlus = other.EndurancePlus;
		Dexterity = other.Dexterity;
		DexterityPlus = other.DexterityPlus;
		Perception = other.Perception;
		PerceptionPlus = other.PerceptionPlus;
		Master = other.Master;
		MasterPlus = other.MasterPlus;
		Will = other.Will;
		WillPlus = other.WillPlus;
		Magical_power = other.Magical_power;
		Magical_powerPlus = other.Magical_powerPlus;
		Charisma = other.Charisma;
		CharismaPlus = other.CharismaPlus;
		Agility = other.Agility;
		AgilityPlus = other.AgilityPlus;
		Luck = other.Luck;
		LuckPlus = other.LuckPlus;
		//----Attack Value
		Strength_MeleeATK = other.Strength_MeleeATK;
		Dexterity_MeleeATK = other.Dexterity_MeleeATK;
		RangeATK = other.RangeATK;
		//----DEF Value
		DEF = other.DEF;
		//----OF? Value
		PRO = other.PRO;
		HideLevel = other.HideLevel;
	}
	exit;
}

//read player status.initialize procces
if(room == rm_start){
	//read and pull player save data status
	
	var _YY,_XX;

	ds_grid_value_exists(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), CharacterDataID){
		_XX = 1;
		_YY = ds_grid_value_y(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), CharacterDataID);
		Name = string(ds_characterData[# _XX++,_YY]);
		Level = real(ds_characterData[# _XX++,_YY]);
		Equipment_weapon_1 = string(ds_characterData[# _XX++,_YY]);
		MaxHP = real(ds_characterData[# _XX++,_YY]);
		MaxHPPlus = real(ds_characterData[# _XX++,_YY]);
		HP = real(ds_characterData[# _XX++,_YY]);
		MaxMP = real(ds_characterData[# _XX++,_YY]);
		MaxMPPlus = real(ds_characterData[# _XX++,_YY]);
		MP = real(ds_characterData[# _XX++,_YY]);
		CarryWeight = real(ds_characterData[# _XX++,_YY]);
		CarryWeightPlus = real(ds_characterData[# _XX++,_YY]);
		Weight = real(ds_characterData[# _XX++,_YY]);
		MaxStamina = real(ds_characterData[# _XX++,_YY]);
		MaxStaminaPlus = real(ds_characterData[# _XX++,_YY]);
		Stamina = real(ds_characterData[# _XX++,_YY]);
		MaxSatiety = real(ds_characterData[# _XX++,_YY]);
		MaxSatietyPlus = real(ds_characterData[# _XX++,_YY]);
		Satiety = real(ds_characterData[# _XX++,_YY]);
		EXP = real(ds_characterData[# _XX++,_YY]);
		NextLevelEXP = real(ds_characterData[# _XX++,_YY]);
		Strength = real(ds_characterData[# _XX++,_YY]);
		StrengthPlus = real(ds_characterData[# _XX++,_YY]);
		Endurance = real(ds_characterData[# _XX++,_YY]);
		EndurancePlus = real(ds_characterData[# _XX++,_YY]);
		Dexterity = real(ds_characterData[# _XX++,_YY]);
		DexterityPlus = real(ds_characterData[# _XX++,_YY]);
		Perception = real(ds_characterData[# _XX++,_YY]);
		PerceptionPlus = real(ds_characterData[# _XX++,_YY]);
		Master = real(ds_characterData[# _XX++,_YY]);
		MasterPlus = real(ds_characterData[# _XX++,_YY]);
		Will = real(ds_characterData[# _XX++,_YY]);
		WillPlus = real(ds_characterData[# _XX++,_YY]);
		Magical_power = real(ds_characterData[# _XX++,_YY]);
		Magical_powerPlus = real(ds_characterData[# _XX++,_YY]);
		Charisma = real(ds_characterData[# _XX++,_YY]);
		CharismaPlus = real(ds_characterData[# _XX++,_YY]);
		Agility = real(ds_characterData[# _XX++,_YY]);
		AgilityPlus = real(ds_characterData[# _XX++,_YY]);
		Luck = real(ds_characterData[# _XX++,_YY]);
		LuckPlus = real(ds_characterData[# _XX++,_YY]);
	}
	//----Attack Value
	Strength_MeleeATK = ((Strength+StrengthPlus)+(Dexterity+DexterityPlus)/10)+(Strength+StrengthPlus)/10*Equipment_StrengthMeleeATK_point;
	Dexterity_MeleeATK = (Strength+StrengthPlus)/10+(Dexterity+DexterityPlus)/10*Equipment_DexterityMeleeATK_point;
	RangeATK = ((Dexterity+DexterityPlus)+(Perception+PerceptionPlus))+Equipment_RangeATK_point;
	//----DEF Value
	DEF = (Endurance+EndurancePlus)+Equipment_DEF_point;
	//----OF? Value
	PRO = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)+Equipment_PRO_point;
	HideLevel = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)/5;
}