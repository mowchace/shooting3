#region Player Status Section

//target obj_player
player_inst = obj_player;

CharacterDataID = 1;

//Health bar position
draw_base_x = 5;
draw_base_y = 20;

healthbar_width = 100;
healthbar_height = 18;
healthbar_x = 5;
healthbar_y = 25;

//initialize player status

//Equipment_StrengthMeleeATK_point = 0;
//Equipment_DexterityMeleeATK_point = 0;
//Equipment_RangeATK_point = 0;
////Equipment_DEF_head = 0;
////Equipment_DEF_nec = 0;
////Equipment_DEF_body = 0;
////Equipment_DEF_arm = 0;
////Equipment_DEF_Waist = 0;
////Equipment_DEF_leg = 0;
////Equipment_DEF_finger = 0;
//Equipment_DEF_point = 0;
//Equipment_PRO_point = 0;

//Make ds_grid
if(file_exists("PlayerData.csv")){
	ds_characterData = load_csv("PlayerData.csv");
	//read and pull player save data status
	var _YY,_XX;
	//ds_grid_value_exists(ds_characterData, 0, 0, 0, ds_grid_height(ds_characterData), CharacterDataID){
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
	//}
	}else{
		ds_characterData = ds_grid_create(25,3);
	}
	//----Attack Value
	Strength_MeleeATK = ((Strength+StrengthPlus)+(Dexterity+DexterityPlus)/10)+(Strength+StrengthPlus)/10;
	Dexterity_MeleeATK = (Strength+StrengthPlus)/10+(Dexterity+DexterityPlus)/10;
	RangeATK = ((Dexterity+DexterityPlus)+(Perception+PerceptionPlus));
	//----DEF Value
	DEF = (Endurance+EndurancePlus);
	//----OF? Value
	PRO = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus);
	HideLevel = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)/5;
	
	//baseEXP
	NextLevelbaseEXP = 50
#endregion