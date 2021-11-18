function Levelup(){
	Level += 1
	MaxHP += irandom_range(0,30);
	HP += irandom_range(0,30);
	MaxMP += irandom_range(0,30);
	MP += irandom_range(0,30);
	Stamina += irandom_range(0,30);
	MaxSatiety += irandom_range(0,30);
	Satiety += irandom_range(0,30);
	Strength += irandom_range(0,30);
	Endurance += irandom_range(0,10000);
	Dexterity += irandom_range(0,10000);
	Perception += irandom_range(0,30);
	Master += irandom_range(0,30);
	Will += irandom_range(0,30);
	Magical_power += irandom_range(0,30);
	Charisma += irandom_range(0,30);
	Agility += irandom_range(0,30);
	Luck += irandom_range(0,30);
	HP = MaxHP;
	if(Level <= 300){
		NextLevelEXP = NextLevelbaseEXP*Level*1.5;
	}else{
		NextLevelEXP = NextLevelbaseEXP*Level;
	}
	EXP = 0;
}