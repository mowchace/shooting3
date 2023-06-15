event_inherited();
playerstate = playerstate_free;
laststate = playerstate;
getStatusTarget = obj_players_status;

global.pickupmode = false;
//room_ext spawn draw
input_hide = false;

//trandition respawn
if(global.targetX != -1){
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}

faction = factions.ally;

normal_speed = 5;
w_spd = 0.5;
r_spd = 1.3;
roll_speed = 10;
roll_distance = 64;
bonk_speed = 2;
bonk_distance = 64;
bonk_distanceheight = 24;
z = 0;

exhaustCounter = 0;
animespeed = 10;



cooldown = 0;
powerfullcooldown = 0;
snipecooldown = 0;
throu_flag = 1;

x_frame = 0;
Row = 0;
y_frame = 0;
returnflug = false;



damegeinvisibletime = 5;

// bullet setting
bltdir = 0;
bltspd = 16;
