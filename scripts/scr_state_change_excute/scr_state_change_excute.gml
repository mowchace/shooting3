function statas_change_excute(){
	Strength_MeeleeATK = ((Strength+StrengthPlus)+(Dexterity+DexterityPlus)/10)+(Strength+StrengthPlus)/10*Equipment_StrengthMeleeATK_point;
	Dexterity_MeeleeATK = (Strength+StrengthPlus)/10+(Dexterity+DexterityPlus)/10*Equipment_DexterityMeleeATK_point;
	RangeATK = ((Dexterity+DexterityPlus)+(Perception+PerceptionPlus))+Equipment_RangeATK_point;
	//　防御
	DEF = (Endurance+EndurancePlus)+Equipment_DEF_point;
	//　回避
	PRO = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)+Equipment_PRO_point;
	HideLevel = (Dexterity+DexterityPlus)/2+(Perception+PerceptionPlus)/2+(Will+WillPlus)/5;
}