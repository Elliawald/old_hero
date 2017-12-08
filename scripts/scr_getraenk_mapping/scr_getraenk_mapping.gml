for (var i = array_length_1d(global.getraenke_rezepte) - 1; i > -1; i--;){
		var rezept = global.getraenke_rezepte[i];
		if(array_equals(rezept,global.topf_inhalt)){
			return i;
		}	
}
return 99;