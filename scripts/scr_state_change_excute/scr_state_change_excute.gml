//Level up after process
//Character Status change
function statas_change_excute(_inst){
	with(_inst){
		Strength_MeleeATK = ((Strength+StrengthPlus)+(Dexterity+DexterityPlus)/10)+(Strength+StrengthPlus)/10;
		Dexterity_MeleeATK = (Strength+StrengthPlus)/10+(Dexterity+DexterityPlus)/10;
		RangeATK = ((Dexterity+DexterityPlus)+(Perception+PerceptionPlus));
		//　防御
		DEF = (Endurance+EndurancePlus);
		//　回避
		PRO = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus);
		HideLevel = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)/5;
	}
}