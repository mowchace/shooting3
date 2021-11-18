// Inherit the parent event
event_inherited();

attack_flag = true;

healthbar_width = 10;
healthbar_height = 2;
healthbar_x = 0;
healthbar_y = 0;

MaxHP = irandom_range(100,500);
HP = MaxHP;
//　防御
DEF = irandom_range(10,50);
//　回避
EXP = MaxHP/3;
SE = SE_gore06;
particleName = "";