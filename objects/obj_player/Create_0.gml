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

HP = 100;
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);