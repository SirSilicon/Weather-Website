void drawCalgary(){
  fill(0);
  textSize(width/30);
  textAlign(CENTER);
  if (day==0){
    str(currentTempCalgaryMain);
    String calgaryCurrentTempNum = currentTempCalgaryMain + "℃";// the ℃ is degrees celcius
    text(calgaryCurrentTempNum,width*1/5,height*2/10);
    text("Min",width*1/20,height*7/10); 
    text("Max",width*7/20,height*7/10); 
    text(currentTempMinCalgaryMain,width*3/40,height*5/10); 
    text(currentTempMaxCalgaryMain,width*13/40,height*5/10); 
    text(currentDescriptionCalgaryMain,width*7/10,height*7/40);
    rect(width*1/25,height*6/10,width*9/25,height*6/10-2);
    float tempDiff = (currentTempMinCalgaryMain-currentTempCalgaryMain)/(currentTempMaxCalgaryMain-currentTempMinCalgaryMain)*-1;
    rect((width*8/25*tempDiff)+width*1/25,height*6.2/10+1,(width*8/25*tempDiff)+width*1/25,height*5.8/10-1);
}
  else{
    forecastCalgaryMain(day);
    text("Min",width*1/20,height*7/10); 
    text("Max",width*7/20,height*7/10); 
    text(forecastTempMinCalgaryMain,width*3/40,height*6/10); 
    text(forecastTempMaxCalgaryMain,width*13/40,height*6/10); 
    text(forecastDescriptionCalgaryMain,width*7/10,height*7/40);
  }
  fill(210);
}
