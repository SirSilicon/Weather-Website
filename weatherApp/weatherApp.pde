String city = "edmonton";
String currentWeatherURL = "https://api.openweathermap.org/data/2.5/weather?";
String forecastWeatherURL = "https://api.openweathermap.org/data/2.5/forecast?";
String edmontonID = "id=5946768";
String calgaryID = "id=5913490";
String redDeerID = "id=6118158";
String apiKey = "APPID=fbf75f6b3b2c0211af00b07df6f1309f";
String mode = "mode=json";
String unitMetric = "units=metric";
String and = "&";
String currentEdmontonURL = currentWeatherURL+edmontonID+and+apiKey+and+mode+and+unitMetric;
String currentCalgaryURL = currentWeatherURL+calgaryID+and+apiKey+and+mode+and+unitMetric;
String currentRedDeerURL = currentWeatherURL+redDeerID+and+apiKey+and+mode+and+unitMetric;
String forecastEdmontonURL = forecastWeatherURL+edmontonID+and+apiKey+and+mode+and+unitMetric;
String forecastCalgaryURL = forecastWeatherURL+calgaryID+and+apiKey+and+mode+and+unitMetric;
String forecastRedDeerURL = forecastWeatherURL+redDeerID+and+apiKey+and+mode+and+unitMetric;
JSONObject jsonCurrentEdmonton = loadJSONObject(currentEdmontonURL);
JSONObject jsonCurrentCalgary = loadJSONObject(currentCalgaryURL);
JSONObject jsonCurrentRedDeer = loadJSONObject(currentRedDeerURL);
JSONObject jsonForecastEdmonton = loadJSONObject(forecastEdmontonURL);
JSONObject jsonForecastCalgary = loadJSONObject(forecastCalgaryURL);
JSONObject jsonForecastRedDeer = loadJSONObject(forecastRedDeerURL);
void setup(){
size(1536,864);
rectMode(CORNERS);
}
void draw(){
rect(0,0,width,height/10);//week forcast nav bar
rect(0,height*4/5,width*2/5,height/10);//right now picture and temp
rect(width*2/5,height/10,width,height*4/5);//today graph
tabs();
if (city=="edmonton"){drawEdmonton();}
if (city=="calgary"){drawCalgary();}
if (city=="redDeer"){drawRedDeer();}
}
void mouseClicked(){
    TabClick();
}
