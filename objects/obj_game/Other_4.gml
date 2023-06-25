if(room != rm_start){
	var _enemy = choose(enemys.enemy1,enemys.enemy2,enemys.enemy3);
	var _nutral = choose(nutrals.nutral1,nutrals.nutral2,nutrals.nutral3,nutrals.nutral4,nutrals.nutral5);
	spawn_off_camera(_enemy,6);
	//var _nutral = choose(nutrals.nutral1,nutrals.nutral2,nutrals.nutral3,nutrals.nutral4);
	//spawn_on_camera(nutrals.nutral1,irandom_range(20,30));
	//spawn_on_camera(nutrals.nutral2,irandom_range(20,30));
	//spawn_on_camera(nutrals.nutral3,irandom_range(5,10));
	//spawn_on_camera(nutrals.nutral4,irandom_range(5,10));
	spawn_on_camera(_nutral,1000);
	alarm[0] = room_speed;
}