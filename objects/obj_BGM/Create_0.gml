// base field bgm
baseBGM = noone;
setBGM = noone;
playingBGM = noone;

// battle bgm
enum enemy_state {
	hide,
	detect,
	Alert,
	evasion,
}
global.enemystate = enemy_state.hide;

press_count = 0;