/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("T"))){
	time_pause =!time_pause;
}
if(time_pause){
	exit;
}
seconds += time_increment;
minutes = seconds/60;
hours = minutes/60;

darkness = hours/24;


//calender check
if(hours >= 24){
	seconds = 0;
	day++;
	with(cropsManager){
		event_perform(ev_other,ev_user1);
	}
	if(day > 30){
		day = 1;
		season++;
		if(season > 4){
			season = 1;
			year++;
		}
	}
}
