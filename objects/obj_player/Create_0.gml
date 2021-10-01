event_inherited();

global.pickupmode = false;

faction = factions.ally;

n_spd = 5;
w_spd = 0.5;
r_spd = 1.3;
exhaustCounter = 0;

hideLevel = 10;

cooldown = 0;
powerfullcooldown = 0;
snipecooldown = 0;

attack = 50;
x_frame = 0;
Row = 0;
y_frame = 0;
returnflug = false;

damegeinvisibletime = 5;
invisibletimecool = 5;

// bullet setting
bltdir = 0;
bltspd = 16;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

HP = 100;
//OBJECT STATUS
	// 0 = Items Name
	// 1 = Items Type
	// 2 = Items effect HP
	// 3 = Items effect MP
	// 4 = Items effect Strength
	// 5 = Items effect Endurance
	// 6 = Items effect Dexterity
	// 7 = Items effect Perception
	// 8 = Items effect Master
	// 9 = Items effect Will
	// 10 = Items effect Magical power
	// 11 = Items effect Charisma
	// 12 = Items effect Agility
	// 13 = Items effect Luck
	// 14 = Items effect Stamina
	// 15 = Items effect Satiety
	// 16 = Items Description