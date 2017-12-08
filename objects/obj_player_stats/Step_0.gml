/// @description stats control
if (hp < 0){
	hp = 0;
}

//stamina regen
if(stamina < maxstamina && alarm[0] == -1){
	stamina++;
}