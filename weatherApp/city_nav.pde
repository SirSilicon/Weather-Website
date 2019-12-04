void cityTabs (){
if (city==1) {strokeWeight(3); fill(180);}//tab drawing
  rect (0,height,width*1/3,height*3/4);
  strokeWeight(1);
  fill(210);
if (city==2) {strokeWeight(3); fill(180);}
  rect (width*1/3,height,width*2/3,height*3/4);
  strokeWeight(1);
  fill(210);
if (city==3) {strokeWeight(3); fill(180);}
   rect (width*2/3,height,width,height*3/4);
   strokeWeight(1);
//end tab drawing
   fill(0);
   text(currentWeatherEdmontonMain,width*1/6,height*19/20);
   text("Edmonton",width*1/6,height*17/20);
   text(currentWeatherCalgaryMain,width*3/6,height*19/20);
   text("Calgary",width*3/6,height*17/20);
   text(currentWeatherRedDeerMain,width*5/6,height*19/20);
   text("RedDeer",width*5/6,height*17/20);
   fill(210);
}
void cityTabClick() {//switch tab listners
  if (mouseX>0 && mouseX<width*1/3 && mouseY>height*3/4 && mouseY<height){city=1;}
  if (mouseX>width*1/3 && mouseX<width*2/3 && mouseY>height*3/4 && mouseY<height){city=2;}
  if (mouseX>width*2/3 && mouseX<width && mouseY>height*3/4 && mouseY<height){city=3;}
}
