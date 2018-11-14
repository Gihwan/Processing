
int kakudo1=0;  
int kakudo2=0;
void setup() {
  size(700, 500);
}

void draw() {
  background(200);


  strokeWeight(4);
  kakudo1+=4;
  kakudo2-=4;

  pushMatrix();
  fill(200, 200, 0);
  translate(200, 200);
  rotate(radians(kakudo1));
  rect(-50, -25, 100, 50);
  popMatrix();

  pushMatrix();
  fill(255, 255, 0);
  translate(400, 200);
  rotate(radians(kakudo2));
  rect(-50, -25, 100, 50);
  popMatrix();
}
