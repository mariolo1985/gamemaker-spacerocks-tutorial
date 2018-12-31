if (room == rm_game){
	// at rm_game start create asteroid
	audio_play_sound(msc_song,2, true);
	repeat(6){
		var xx = choose(
			irandom_range(0, room_width * 0.3),
			irandom_range(room_width * 0.7, room_width)
		);
		
		var yy = choose(
			irandom_range(0, room_height * 0.3),
			irandom_range(room_height * 0.7, room_height)
		);
		
		instance_create_layer(xx, yy, "Instances", objAsteroid);
	}
	
	alarm[0] = 60;// trigger alarm0 in 60
}