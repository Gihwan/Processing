//crossline.pde
//Draw the crossline
//2017/4/11
//1-3-41 Gihwan Doh


 void setup(){
 size(500,500);
   
 }
 
 void draw(){
 background(255);
 noStroke();
   fill(255,0,0);
  rect(0,mouseY,500,10);
  rect(mouseX,0,10,500);
  
 }