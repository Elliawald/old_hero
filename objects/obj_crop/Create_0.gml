/// @description Insert description here
// You can write your code in this editor
frameWidth = 32;	
frameHeight = 64;

cropType = 2;
daysOld = 0;
growthStage = 4;
growthStageDuration = 0;
maxGrowthStage = (sprite_get_width(spr_crops)/frameWidth-1);

fullyGrown = false;
sparkle = false;

xx = x-(frameWidth/2)+2;
yy = y-frameWidth+6;