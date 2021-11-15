function Levelup(){
	Level += 1
	attack += 10000;
	MaxHP += 10000;
	HP = MaxHP;
	if(Level <= 300){
		NextLevelEXP = NextLevelbaseEXP*Level*1.5;
	}else{
		NextLevelEXP = NextLevelbaseEXP*Level;
	}
	EXP = 0;
}