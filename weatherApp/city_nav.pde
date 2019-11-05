void tabs (){
if (edmonton) {strokeWeight(3); fill(180);}//tab drawing
  rect (0,height,width*1/3,height*3/4);
  strokeWeight(1);
  fill(210);
if (redDeer) {strokeWeight(3); fill(180);}
  rect (width*1/3,height,width*2/3,height*3/4);
  strokeWeight(1);
  fill(210);
if (calgary) {strokeWeight(3); fill(180);}
   rect (width*2/3,height,width,height*3/4);
   strokeWeight(1);
   fill(210);
}//end tab drawing
void TabClick() {//switch tab listners
  if (edmonton){
    if (mouseX>width*1/3 && mouseX<width*2/3 && mouseY>height*3/4 && mouseY<0){edmonton = false; redDeer = true;}
    if (mouseX>width*2/3 && mouseX<width && mouseY>height*3/4 && mouseY<0){edmonton = false; calgary = true;}
  }
  if (redDeer){
    if (mouseX>0 && mouseX<width*1/3 && mouseY>height*3/4 && mouseY<0){redDeer = false; edmonton = true;}
    if (mouseX>width*2/3 && mouseX<width && mouseY>height*3/4 && mouseY<0){redDeer = false; calgary = true;}
  }
   if (calgary){
    if (mouseX>width*1/3 && mouseX<width*2/3 && mouseY>height*3/4 && mouseY<0){calgary = false; redDeer = true;}
    if (mouseX>0 && mouseX<width*1/3 && mouseY>height*3/4 && mouseY<0){calgary = false; edmonton = true;}
  }
}
