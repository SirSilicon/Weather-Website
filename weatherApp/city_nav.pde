void tabs (){
if (city=="edmonton") {strokeWeight(3); fill(180);}//tab drawing
  rect (0,height,width*1/3,height*3/4);
  strokeWeight(1);
  fill(210);
if (city=="calgary") {strokeWeight(3); fill(180);}
  rect (width*1/3,height,width*2/3,height*3/4);
  strokeWeight(1);
  fill(210);
if (city=="redDeer") {strokeWeight(3); fill(180);}
   rect (width*2/3,height,width,height*3/4);
   strokeWeight(1);
   fill(210);
}//end tab drawing
void TabClick() {//switch tab listners
  if (mouseX>0 && mouseX<width*1/3 && mouseY>height*3/4 && mouseY<height){city="edmonton";}
  if (mouseX>width*1/3 && mouseX<width*2/3 && mouseY>height*3/4 && mouseY<height){city="calgary";}
  if (mouseX>width*2/3 && mouseX<width && mouseY>height*3/4 && mouseY<height){city="redDeer";}
}
