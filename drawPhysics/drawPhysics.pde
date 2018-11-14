


import fisica.*;

FWorld world;
FPoly poly;

void setup() {
  size(400, 400);
  smooth();
  Fisica.init(this);


  world = new FWorld();
  world.setGravity(0, 800);
  world.setEdges();
  world.remove(world.left);
  world.remove(world.right);
  world.remove(world.top);

  world.setEdgesRestitution(0.5);
}

void draw() {
  background(255);

  world.step();
  world.draw(this);  


  if (poly != null) {
    poly.draw(this);
  }
}


void mousePressed() {
  if (world.getBody(mouseX, mouseY) != null) {
    return;
  }
  if (mouseButton==LEFT) {
    poly = new FPoly();
    poly.setStrokeWeight(3);
    poly.setStatic(true);
    poly.setFill(255, 200, 15);
    poly.setDensity(10);
    poly.setRestitution(0.5);
    poly.vertex(mouseX, mouseY);
  }

  if (mouseButton==RIGHT) {
    FCircle ball = new FCircle(50);
    ball.setPosition( mouseX, mouseY );
    ball.setRestitution(1.0);
    ball.setFill(255, 80, 120);
    world.add(ball);
  }
}

void mouseDragged() {
  if (poly!=null) {
    poly.vertex(mouseX, mouseY);
  }
}

void mouseReleased() {
  if (poly!=null) {
    world.add(poly);
    poly = null;
  }
}

void keyPressed() {
  if (key == BACKSPACE) {
    FBody hovered = world.getBody(mouseX, mouseY);
    if ( hovered != null &&
      hovered.isStatic() == false ) {
      world.remove(hovered);
    }
  } else {
    try {
      saveFrame("screenshot.png");
    } 
    catch (Exception e) {
    }
  }
}
