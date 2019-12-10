void drawEdmonton(){
  fill(0);
  textSize(width/30);
  textAlign(CENTER);
  if (day==0){
    str(currentTempEdmontonMain);
    String edmontonCurrentTempNum = currentTempEdmontonMain + "℃";// the ℃ is degrees celcius
    text(edmontonCurrentTempNum,width*1/5,height*2/10);
    text("Min",width*1/20,height*7/10); 
    text("Max",width*7/20,height*7/10); 
    text(currentTempMinEdmontonMain,width*3/40,height*5/10); 
    text(currentTempMaxEdmontonMain,width*13/40,height*5/10); 
    text(currentDescriptionEdmontonMain,width*7/10,height*7/40);
    rect(width*1/25,height*6/10,width*9/25,height*6/10-2);
    float tempDiff = (currentTempMinEdmontonMain-currentTempEdmontonMain)/(currentTempMaxEdmontonMain-currentTempMinEdmontonMain)*-1;
    rect((width*8/25*tempDiff)+width*1/25,height*6.2/10+1,(width*8/25*tempDiff)+width*1/25,height*5.8/10-1);
}
  else{
    forecastEdmontonMain(day);
    text("Min",width*1/20,height*7/10); 
    text("Max",width*7/20,height*7/10); 
    text(forecastTempMinEdmontonMain,width*3/40,height*6/10); 
    text(forecastTempMaxEdmontonMain,width*13/40,height*6/10); 
    text(forecastDescriptionEdmontonMain,width*7/10,height*7/40);
  }
  fill(210);
}
