import java.util.Date; 

void UrlAssembly() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String edmontonMainId = "id=5946768";
  String calgaryId = "id=5913490";
  String redDeerId = "id=6118158";
  String apiKey = "APPID=fbf75f6b3b2c0211af00b07df6f1309f";
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";

  URLCurrentEdmontonMain = baseURL_Current+edmontonMainId+and+apiKey+and+mode+and+unitMetric;
  URLForecastEdmontonMain = baseURL_Forecast+edmontonMainId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentCalgaryMain = baseURL_Current+calgaryId+and+apiKey+and+mode+and+unitMetric;
  URLForecastCalgaryMain = baseURL_Forecast+calgaryId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentRedDeerMain = baseURL_Current+redDeerId+and+apiKey+and+mode+and+unitMetric;
  URLForecastRedDeerMain = baseURL_Forecast+redDeerId+and+apiKey+and+mode+and+unitMetric;
  println(URLForecastEdmontonMain);
}
void API() {
  jsonCurrentEdmontonMain = loadJSONObject(URLCurrentEdmontonMain);
  jsonForecastEdmontonMain = loadJSONObject(URLForecastEdmontonMain);
  jsonCurrentCalgaryMain = loadJSONObject(URLCurrentCalgaryMain);
  jsonForecastCalgaryMain = loadJSONObject(URLForecastCalgaryMain);
  jsonCurrentRedDeerMain = loadJSONObject(URLCurrentRedDeerMain);
  jsonForecastRedDeerMain = loadJSONObject(URLForecastRedDeerMain);
}
void variablePopulation() {
  currentEdmonton();
  currentCalgary();
  currentRedDeer();
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000);
  return dateHuman;
}

void currentEdmonton() {
  JSONArray currentWeatherEdmontonArray = jsonCurrentEdmontonMain.getJSONArray("weather");
  JSONObject currentWeatherEdmonton = currentWeatherEdmontonArray.getJSONObject(0); 
  
  currentWeatherEdmontonMain = currentWeatherEdmonton.getString("main");
  currentDescriptionEdmontonMain = currentWeatherEdmonton.getString("description");
  currentIconEdmontonMain = currentWeatherEdmonton.getString("icon");

  JSONObject currentTempsEdmonton = jsonCurrentEdmontonMain.getJSONObject("main"); 
  currentTempEdmontonMain = currentTempsEdmonton.getFloat("temp");
  currentTempMinEdmontonMain = currentTempsEdmonton.getFloat("temp_min");
  currentTempMaxEdmontonMain = currentTempsEdmonton.getFloat("temp_max");

  long APITimeEdmontonMain = jsonCurrentEdmontonMain.getInt("dt"); 
  apiCurrentDateCall = humanDate(APITimeEdmontonMain);

  JSONObject currentSunEdmontonMain = jsonCurrentEdmontonMain.getJSONObject("sys"); 
  currentSunriseEdmontonMain = currentSunEdmontonMain.getInt("sunrise");
  currentSunsetEdmontonMain = currentSunEdmontonMain.getInt("sunset");
}

void currentCalgary() {
  JSONArray currentWeatherCalgaryArray = jsonCurrentCalgaryMain.getJSONArray("weather");
  JSONObject currentWeatherCalgary = currentWeatherCalgaryArray.getJSONObject(0); 
  
  currentWeatherCalgaryMain = currentWeatherCalgary.getString("main");
  currentDescriptionCalgaryMain = currentWeatherCalgary.getString("description");
  currentIconCalgaryMain = currentWeatherCalgary.getString("icon");

  JSONObject currentTempsCalgary = jsonCurrentCalgaryMain.getJSONObject("main"); 
  currentTempCalgaryMain = currentTempsCalgary.getFloat("temp");
  currentTempMinCalgaryMain = currentTempsCalgary.getFloat("temp_min");
  currentTempMaxCalgaryMain = currentTempsCalgary.getFloat("temp_max");

  long APITimeCalgaryMain = jsonCurrentCalgaryMain.getInt("dt"); 
  apiCurrentDateCall = humanDate(APITimeCalgaryMain);

  JSONObject currentSunCalgaryMain = jsonCurrentEdmontonMain.getJSONObject("sys"); 
  currentSunriseCalgaryMain = currentSunCalgaryMain.getInt("sunrise");
  currentSunsetCalgaryMain = currentSunCalgaryMain.getInt("sunset");
}
void currentRedDeer() {
  JSONArray currentWeatherRedDeerArray = jsonCurrentRedDeerMain.getJSONArray("weather");
  JSONObject currentWeatherRedDeer = currentWeatherRedDeerArray.getJSONObject(0); 
  
  currentWeatherRedDeerMain = currentWeatherRedDeer.getString("main");
  currentDescriptionRedDeerMain = currentWeatherRedDeer.getString("description");
  currentIconRedDeerMain = currentWeatherRedDeer.getString("icon");

  JSONObject currentTempsRedDeer = jsonCurrentRedDeerMain.getJSONObject("main"); 
  currentTempRedDeerMain = currentTempsRedDeer.getFloat("temp");
  currentTempMinRedDeerMain = currentTempsRedDeer.getFloat("temp_min");
  currentTempMaxRedDeerMain = currentTempsRedDeer.getFloat("temp_max");

  long APITimeRedDeerMain = jsonCurrentRedDeerMain.getInt("dt"); 
  apiCurrentDateCall = humanDate(APITimeRedDeerMain);

  JSONObject currentSunRedDeerMain = jsonCurrentRedDeerMain.getJSONObject("sys"); 
  currentSunriseRedDeerMain = currentSunRedDeerMain.getInt("sunrise");
  currentSunsetRedDeerMain = currentSunRedDeerMain.getInt("sunset");
}

void forecastEdmontonMain(int day){
  JSONArray forecastEdmontonArray = jsonForecastEdmontonMain.getJSONArray("list");
  JSONObject forecastEdmonton = forecastEdmontonArray.getJSONObject(day);
  
  JSONArray forecastWeatherEdmontonArray = forecastEdmonton.getJSONArray("weather");
  JSONObject forecastWeatherEdmonton = forecastWeatherEdmontonArray.getJSONObject(0); 
  forecastWeatherEdmontonMain = forecastWeatherEdmonton.getString("main");
  forecastDescriptionEdmontonMain = forecastWeatherEdmonton.getString("description");
  forecastIconEdmontonMain = forecastWeatherEdmonton.getString("icon");

  JSONObject forecastTempsEdmonton = forecastEdmonton.getJSONObject("main"); 
  forecastTempEdmontonMain = forecastTempsEdmonton.getFloat("temp");
  forecastTempMinEdmontonMain = forecastTempsEdmonton.getFloat("temp_min");
  forecastTempMaxEdmontonMain = forecastTempsEdmonton.getFloat("temp_max");

  long APITimeEdmontonMain = forecastEdmonton.getInt("dt"); 
  apiForecastDateCall = humanDate(APITimeEdmontonMain);

}
void forecastCalgaryMain(int day){
  JSONArray forecastCalgaryArray = jsonForecastCalgaryMain.getJSONArray("list");
  JSONObject forecastCalgary = forecastCalgaryArray.getJSONObject(day);
  
  JSONArray forecastWeatherCalgaryArray = forecastCalgary.getJSONArray("weather");
  JSONObject forecastWeatherCalgary = forecastWeatherCalgaryArray.getJSONObject(0); 
  forecastWeatherCalgaryMain = forecastWeatherCalgary.getString("main");
  forecastDescriptionCalgaryMain = forecastWeatherCalgary.getString("description");
  forecastIconCalgaryMain = forecastWeatherCalgary.getString("icon");

  JSONObject forecastTempsCalgary = forecastCalgary.getJSONObject("main"); 
  forecastTempCalgaryMain = forecastTempsCalgary.getFloat("temp");
  forecastTempMinCalgaryMain = forecastTempsCalgary.getFloat("temp_min");
  forecastTempMaxCalgaryMain = forecastTempsCalgary.getFloat("temp_max");

  long APITimeCalgaryMain = forecastCalgary.getInt("dt"); 
  apiForecastDateCall = humanDate(APITimeCalgaryMain);

}
void forecastRedDeerMain(int day){
  JSONArray forecastRedDeerArray = jsonForecastRedDeerMain.getJSONArray("list");
  JSONObject forecastRedDeer = forecastRedDeerArray.getJSONObject(day);
  
  JSONArray forecastWeatherRedDeerArray = forecastRedDeer.getJSONArray("weather");
  JSONObject forecastWeatherRedDeer = forecastWeatherRedDeerArray.getJSONObject(0); 
  forecastWeatherEdmontonMain = forecastWeatherRedDeer.getString("main");
  forecastDescriptionRedDeerMain = forecastWeatherRedDeer.getString("description");
  forecastIconRedDeerMain = forecastWeatherRedDeer.getString("icon");

  JSONObject forecastTempsRedDeer = forecastRedDeer.getJSONObject("main"); 
  forecastTempRedDeerMain = forecastTempsRedDeer.getFloat("temp");
  forecastTempMinRedDeerMain = forecastTempsRedDeer.getFloat("temp_min");
  forecastTempMaxRedDeerMain = forecastTempsRedDeer.getFloat("temp_max");

  long APITimeRedDeerMain = forecastRedDeer.getInt("dt"); 
  apiForecastDateCall = humanDate(APITimeRedDeerMain);

}
