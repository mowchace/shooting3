// Check faction
if(other.faction != factions.enemy){exit};

x += 1;
y += 1;
if(invisibletimecool >= damegeinvisibletime){
	HP -= irandom_range(3,5);
	invisibletimecool = 10;
}