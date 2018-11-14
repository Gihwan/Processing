

import fisica.*;
FWorld world;

void setup() {
size(400, 400);
Fisica.init(this);
world = new FWorld();
world.setEdges();
}


void draw() {
background(255);
world.step();
world.draw();}


void mousePressed(){
FPoly poly = new FPoly();
poly.setFill(255, 200, 15);
poly.vertex( mouseX,mouseY-30 );
poly.vertex( mouseX+30, mouseY-10 );
poly.vertex( mouseX+50, mouseY+30 );
poly.vertex( mouseX-30, mouseY+30 );
poly.vertex( mouseX-30, mouseY-20 );
world.add(poly);

}
