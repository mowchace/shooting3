function use_Item(_effect,_heal_or_inc,_minus_or_plus,_subject_obj){
	// effect minus or plus
	var _PoR = 0,_effect_PoR = 0;
	switch(_minus_or_plus){
		case 0: _PoR = 1 break;
		case 1: _PoR = -1 break;
	}
	show_debug_message("_PoR:"+string(_PoR))
	show_debug_message("_effect:"+string(_effect))
	_effect_PoR = real(_effect)*_PoR;
	show_debug_message("_effect_PoR:"+string(_effect_PoR))

	switch(_heal_or_inc){
		case 0:
		with(_subject_obj){
			HP += _effect_PoR;
		}
		break;
		case 1:
		with(_subject_obj){
			MaxHP += _effect_PoR;
		}
	}
}