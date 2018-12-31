lives -= 1;
audio_play_sound(snd_die, 1, false);
instance_destroy();// destroy self when colliding with asteroid

// explode into 10 little pieces
repeat(10){
	instance_create_layer(x, y, "Instances", objDebris);	
}

if (lives > 0){
	instance_create_layer(20, 40, "Instances", objShip);	
}