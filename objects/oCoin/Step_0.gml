if (place_meeting(x,y,oSeagull)) {
	audio_play_sound(coin,1,false);
	instance_destroy();
	oSeagull.coins++;
}