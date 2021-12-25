function use_Item(_inst,_selectingslot_item,_item_info){
	var _DX=3,_DY=_selectingslot_item+1;
	with(_inst){
		MaxHP += _item_info[# _DX++,_DY];
		if(MaxHP+MaxHPPlus >= HP+_item_info[# _DX++,_DY]){
			HP += _item_info[# _DX,_DY];
		}else{
			HP = MaxHP+MaxHPPlus;
		}
		MaxMP += _item_info[# _DX++,_DY];
		if(MaxMP+MaxMPPlus >= MP+_item_info[# _DX++,_DY]){
			MP += _item_info[# _DX,_DY];
		}else{
			MP = MaxMP+MaxMPPlus;
		}
		MaxSatiety += _item_info[# _DX++,_DY];
		if(MaxSatiety+MaxSatietyPlus >= Satiety+_item_info[# _DX++,_DY]){
			Satiety += _item_info[# _DX,_DY];
		}else{
			Satiety = MaxSatiety+MaxSatietyPlus;
		}
		Strength += _item_info[# _DX++,_DY];
		Endurance += _item_info[# _DX++,_DY];
		Dexterity += _item_info[# _DX++,_DY];
		Perception += _item_info[# _DX++,_DY];
		Master += _item_info[# _DX++,_DY];
		Will += _item_info[# _DX++,_DY];
		Magical_power += _item_info[# _DX++,_DY];
		Charisma += _item_info[# _DX++,_DY];
		Agility += _item_info[# _DX++,_DY];
		Luck += _item_info[# _DX++,_DY];
		if(MaxStamina+MaxStaminaPlus >= Stamina+_item_info[# _DX++,_DY]){
			Stamina += _item_info[# _DX,_DY];
		}else{
			Stamina = MaxStamina+MaxStaminaPlus;
		}
	}
}