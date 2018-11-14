

int kakudo=0;  
void setup() {
  size(800, 800);
}

void draw() {
  background(200);

  strokeWeight(4);
  kakudo+=2;

  pushMatrix();
  fill(255, 255, 0);
  translate(400, 400);
  rotate(radians(kakudo));
  ellipse(100, 100, 100, 100);
  popMatrix();

  pushMatrix();
  fill(255, 255, 0);
  translate(400, 400);
  rotate(radians(kakudo+180));
  ellipse(100, 100, 100, 100);
  popMatrix();
}
