void drawRedDeer(){
  fill(0);
  textSize(width/30);
  textAlign(CENTER);
  if (day==0){
    str(currentTempRedDeerMain);
    String redDeerCurrentTempNum = currentTempRedDeerMain + "℃";// the ℃ is degrees celcius
    text(redDeerCurrentTempNum,width*1/5,height*2/10);
    text("Min",width*1/20,height*7/10); 
    text("Max",width*7/20,height*7/10); 
    text(currentTempMinRedDeerMain,width*3/40,height*5/10); 
    text(currentTempMaxRedDeerMain,width*13/40,height*5/10); 
    text(currentDescriptionRedDeerMain,width*7/10,height*7/40);
    rect(width*1/25,height*6/10,width*9/25,height*6/10-2);
    float tempDiff = (currentTempMinRedDeerMain-currentTempRedDeerMain)/(currentTempMaxRedDeerMain-currentTempMinRedDeerMain)*-1;
    rect((width*8/25*tempDiff)+width*1/25,height*6.2/10+1,(width*8/25*tempDiff)+width*1/25,height*5.8/10-1);
}
  else{
    forecastRedDeerMain(day);
    text("Min",width*1/20,height*7/10); 
    text("Max",width*7/20,height*7/10); 
    text(forecastTempMinRedDeerMain,width*3/40,height*6/10); 
    text(forecastTempMaxRedDeerMain,width*13/40,height*6/10); 
    text(forecastDescriptionRedDeerMain,width*7/10,height*7/40);
  }
  fill(210);
}
