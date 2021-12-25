function equipment_Item(_inst,_selectingslot_item,_item_info){
	var _DX=4,_DY=_selectingslot_item+1;
	var _Buffer
	with(_inst){
		MaxHPPlus = _item_info[# _DX++,_DY];
		_Buffer = _item_info[# _DX++,_DY];
		MaxMPPlus = _item_info[# _DX++,_DY];
		_Buffer = _item_info[# _DX++,_DY];
		MaxSatietyPlus = _item_info[# _DX++,_DY];
		_Buffer = _item_info[# _DX++,_DY];
		StrengthPlus = _item_info[# _DX++,_DY];
		EndurancePlus = _item_info[# _DX++,_DY];
		DexterityPlus = _item_info[# _DX++,_DY];
		PerceptionPlus = _item_info[# _DX++,_DY];
		MasterPlus = _item_info[# _DX++,_DY];
		WillPlus = _item_info[# _DX++,_DY];
		Magical_powerPlus = _item_info[# _DX++,_DY];
		CharismaPlus = _item_info[# _DX++,_DY];
		AgilityPlus = _item_info[# _DX++,_DY];
		LuckPlus = _item_info[# _DX++,_DY];
		MaxStaminaPlus = _item_info[# _DX,_DY];
	}
	statas_change_excute(_inst)
}