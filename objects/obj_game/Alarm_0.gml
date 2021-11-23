if(room != rm_game && global.gamePaused){exit};
var _enemy = choose(enemys.enemy1,enemys.enemy2,enemys.enemy3);
show_debug_message("instance_count"+string(instance_count));
if(instance_count < 100){spawn_off_camera(_enemy,1);}
alarm[0] = room_speed*10;
