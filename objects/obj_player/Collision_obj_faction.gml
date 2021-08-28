// Check faction
if(other.faction != factions.enemy){exit};
/// @description
if(invisibletimecool >= damegeinvisibletime){
	HP -= irandom_range(3,5);
	invisibletimecool = 0;
}