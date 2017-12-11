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

if(draw_daylight){
	#region //phases cycle 
	var darks, colours, pstart, pend;
	
	if(hours > phase.sunrise and hours <= phase.daytime){//sunrise
		darks = [max_darkness, 0.2];
		colours = [merge_color(c_black,c_navy,0.3),c_orange];
		pstart = phase.sunrise;
		pend = phase.daytime;
	}else if(hours > phase.daytime and hours <= phase.sunset){ //day
		darks = [0.2,0,0,0,0.2];
		colours = [c_orange,c_orange,c_white,c_orange,c_orange];
		pstart = phase.daytime;
		pend = phase.sunset;
	}else if(hours > phase.sunset and hours <= phase.nighttime){ //sunset
		darks = [0.2, max_darkness];
		colours = [c_orange,c_navy,merge_color(c_black,c_navy,0.3)];
		pstart = phase.sunset;
		pend = phase.nighttime;
	}else{//night
		darks = [max_darkness];
		colours = [merge_color(c_black,c_navy,0.3), c_orange];
		pstart = phase.nighttime;
		pend = phase.sunrise;
	}
	#endregion
	#region //colours and darkness
	if(pstart == phase.nighttime){
		light_color = colours[0];
	}else{
		var cc = ((hours-pstart) / (pend -pstart))*(array_length_1d(colours)-1);
		var c1 = colours[floor(cc)];
		var c2 = colours[ceil(cc)];
	
		light_color = merge_color(c1,c2, cc-floor(cc));
	}
	if(pstart == phase.nighttime){
		darkness = darks[0];
	}else{
	//darkness
		var dd = ((hours-pstart) / (pend -pstart))*(array_length_1d(darks)-1);
		var d1 = darks[floor(dd)];
		var d2 = darks[ceil(dd)];
	
		darkness = lerp(d1,d2,dd-floor(dd));
	}
	#endregion
}

#region //cycleday check
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
#endregion