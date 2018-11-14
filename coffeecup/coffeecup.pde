

int kakudo=0;  
void setup() {
  size(800, 800);
}

void draw() {
  background(200);

  strokeWeight(4);
  kakudo+=2;

  pushMatrix();
  //一番外側の丸
  fill(255, 255, 0);
  translate(400,400);
 rotate(radians(kakudo));
ellipse(0,0,400,400);
  popMatrix();
  
    pushMatrix();
 fill(200,200,0);
   translate(400,400);
  rotate(radians(kakudo));
 ellipse(90,90,120,120);
   popMatrix();
   
      pushMatrix();
 fill(200,200,0);
   translate(400,400);
  rotate(radians(kakudo+180));
 ellipse(90,90,120,120);
   popMatrix();

  
}