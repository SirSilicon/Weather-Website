boolean edmonton = true;
boolean calgary = false;
boolean redDeer = false;
void setup(){
size(1536,864);
rectMode(CORNERS);
}
void draw(){
rect(0,0,width,height/10);//week forcast nav bar
rect(0,height*4/5,width*2/5,height/10);//right now picture and temp
rect(width*2/5,height/10,width,height*4/5);//today graph
tabs();
if (edmonton){drawEdmonton();}
if (edmonton){drawCalgary();}
if (edmonton){drawRedDeer();}
}
void mouseClicked(){}
