

int kakudo=0;  
void setup() {
  size(700, 500);
}

void draw() {
  background(200);

  fill(240, 240, 0);
  strokeWeight(4);
  kakudo+=4;

  pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(kakudo));
  rect(-50, -50, 100, 100);
  popMatrix();
}
