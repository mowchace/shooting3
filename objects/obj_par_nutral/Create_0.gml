// Inherit the parent event
event_inherited();

attack_flag = true;
animespeed = 10;
healthbar_width = 10;
healthbar_height = 2;
healthbar_x = 0;
healthbar_y = 0;

create_instance = noone;
respawn_instance_num = 1;

MaxHP = irandom_range(100,500);
HP = MaxHP;
//　防御
DEF = 0;
//　回避
EXP = MaxHP/3;
SE = SE_gore06;
particleName = "";