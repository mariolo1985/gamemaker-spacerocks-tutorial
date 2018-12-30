instance_destroy();// destroy bullet

// in the "other" collision obj
with(other){
	instance_destroy();
	
	if (sprite_index == spr_asteroid_lg){
		repeat(2){
			var inst = instance_create_layer(x,y,"Instances",objAsteroid);
			inst.sprite_index = spr_asteroid_md;	
		}
	} else if (sprite_index == spr_asteroid_lg){
		repeat(2){
			var inst = instance_create_layer(x,y,"Instances",objAsteroid);
			inst.sprite_index = spr_asteroid_small;	
		}
	}
	
	repeat(10){
		instance_create_layer(x, y, "Instances", objDebris);	
	}
}