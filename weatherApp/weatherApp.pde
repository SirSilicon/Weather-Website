String URLCurrentEdmontonMain;
String URLForecastEdmontonMain;
String URLCurrentCalgaryMain;
String URLForecastCalgaryMain;
String URLCurrentRedDeerMain;
String URLForecastRedDeerMain;

JSONObject jsonCurrentEdmontonMain;
JSONObject jsonForecastEdmontonMain;
JSONObject jsonCurrentCalgaryMain;
JSONObject jsonForecastCalgaryMain;
JSONObject jsonCurrentRedDeerMain;
JSONObject jsonForecastRedDeerMain;


String currentWeatherEdmontonMain, currentDescriptionEdmontonMain,currentIconEdmontonMain;
float currentTempEdmontonMain,currentTempMinEdmontonMain,currentTempMaxEdmontonMain;
int currentSunriseEdmontonMain,currentSunsetEdmontonMain;
Date apiCurrentDateCall;

String forecastWeatherEdmontonMain,forecastDescriptionEdmontonMain,forecastIconEdmontonMain;
float forecastTempEdmontonMain,forecastTempMinEdmontonMain,forecastTempMaxEdmontonMain;
int forecastSunriseEdmontonMain,forecastSunsetEdmontonMain;
Date apiForecastDateCall;

String currentWeatherCalgaryMain, currentDescriptionCalgaryMain,currentIconCalgaryMain;
float currentTempCalgaryMain,currentTempMinCalgaryMain,currentTempMaxCalgaryMain;
int currentSunriseCalgaryMain,currentSunsetCalgaryMain;

String forecastWeatherCalgaryMain,forecastDescriptionCalgaryMain,forecastIconCalgaryMain;
float forecastTempCalgaryMain,forecastTempMinCalgaryMain,forecastTempMaxCalgaryMain;
int forecastSunriseCalgaryMain,forecastSunsetCalgaryMain;

String currentWeatherRedDeerMain, currentDescriptionRedDeerMain,currentIconRedDeerMain;
float currentTempRedDeerMain,currentTempMinRedDeerMain,currentTempMaxRedDeerMain;
int currentSunriseRedDeerMain,currentSunsetRedDeerMain;

String forecastWeatherRedDeerMain,forecastDescriptionRedDeerMain,forecastIconRedDeerMain;
float forecastTempRedDeerMain,forecastTempMinRedDeerMain,forecastTempMaxRedDeerMain;
int forecastSunriseRedDeerMain,forecastSunsetRedDeerMain;

int city = 1;
int day = 0;

PFont font;
void setup(){
  UrlAssembly();
  API();
  variablePopulation();
  size(1536,864);
  rectMode(CORNERS);
  font = createFont("Times New Roman", 32);
  textFont(font);
  textAlign(CENTER, CENTER);
}
void draw(){
  rect(0,0,width,height/10);
  rect(0,height*4/5,width*2/5,height/10);
  rect(width*2/5,height/10,width,height*4/5);
  rect(width,height/10,width*28/30,height*2/10);
  fill(0);
  textFont(font,20);
  text("refresh",width*29/30,height*3/20);
  fill(210);
  if (city==1){drawEdmonton();}
  if (city==2){drawCalgary();}
  if (city==3){drawRedDeer();}
  cityTabs();
  dayTabs();
}
void mouseClicked(){
  cityTabClick();
  dayTabClick();
  if (mouseX>width*28/30&&mouseX<width&&mouseY>height/10&&mouseY<height*2/10){variablePopulation();API();}
}
