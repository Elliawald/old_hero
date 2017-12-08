/// @description end animation when its finished /change attack state back to move state
if(state == scr_attack_state){
	state = scr_move_state;
	attacked = false;
}