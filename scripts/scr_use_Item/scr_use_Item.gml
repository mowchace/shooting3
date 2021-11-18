function use_Item(_effect,_heal_or_inc,_subject_obj){
	// effect minus or plus
	switch(_heal_or_inc){
		case 0:
		with(_subject_obj){
			HP += _effect;
		}
		break;
		case 1:
		with(_subject_obj){
			MaxHP += _effect;
		}
	}
}