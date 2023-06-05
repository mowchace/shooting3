/// @description Set no Motion
damegePoint = random_range(damegePoint_min,damegePoint_max);
damegePoint_Calculated_value = 0;
attack = 0;
baseSpeed = speed;
life = LifeTime;
faction = undefined;
creater = undefined;
hideattack = false;
gunhit_rangeplus = 5;
attack_positionX = x;
attack_positionY = y-5;
attack_particlepositionX = x;
attack_particlepositionY = y-sprite_height/3;

// hit SE
hit_SE = SE_gunhit_normal;