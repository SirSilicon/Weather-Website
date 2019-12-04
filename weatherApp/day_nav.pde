void dayTabs (){
if (day==0) {strokeWeight(3); fill(180);}//tab drawing
  rect (0,0,width*1/7,height*1/10);
  strokeWeight(1);
  fill(0);
  fill(210);
if (day==1) {strokeWeight(3); fill(180);}
  rect (width*1/7,0,width*2/7,height*1/10);
  strokeWeight(1);
  fill(210);
if (day==2) {strokeWeight(3); fill(180);}
   rect (width*2/7,0,width*3/7,height*1/10);
   strokeWeight(1);
   fill(210);
if (day==3) {strokeWeight(3); fill(180);}
   rect (width*3/7,0,width*4/7,height*1/10);
   strokeWeight(1);
   fill(210);
if (day==4) {strokeWeight(3); fill(180);}
   rect (width*4/7,0,width*5/7,height*1/10);
   strokeWeight(1);
   fill(210);
if (day==5) {strokeWeight(3); fill(180);}
   rect (width*5/7,0,width*6/7,height*1/10);
   strokeWeight(1);
   fill(210);
if (day==6) {strokeWeight(3); fill(180);}
   rect (width*6/7,0,width,height*1/10);
   strokeWeight(1);
   fill(210);
}//end tab drawing
void dayTabClick() {//switch tab listners
  if (mouseX>0 && mouseX<width*1/7 && mouseY>0 && mouseY<height/10){day=0;}
  if (mouseX>width*1/7 && mouseX<width*2/7 && mouseY>0 && mouseY<height/10){day=1;}
  if (mouseX>width*2/7 && mouseX<width*3/7 && mouseY>0 && mouseY<height/10){day=2;}
  if (mouseX>width*3/7 && mouseX<width*4/7 && mouseY>0 && mouseY<height/10){day=3;}
  if (mouseX>width*4/7 && mouseX<width*5/7 && mouseY>0 && mouseY<height/10){day=4;}
  if (mouseX>width*5/7 && mouseX<width*6/7 && mouseY>0 && mouseY<height/10){day=5;}
  if (mouseX>width*6/7 && mouseX<width && mouseY>0 && mouseY<height/10){day=6;}

}
