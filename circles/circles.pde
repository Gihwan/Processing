

int [][] maru=new int [6][3];

void setup() {
  size(600, 300);
strokeWeight(5);
  for (int i=0; i<6; i++) {
    for (int j=0; j<3; j++) {
      maru[i][j]=0;
    }
  }
}

void draw() {
  background(130);
  for (int i=0; i<6; i++) {
    for (int j=0; j<3; j++) {
      if (50<=dist(50+i*100, 50+j*100, mouseX, mouseY)) {
        maru[i][j]=1;
      }else{  maru[i][j]=0;}



      if (maru[i][j]==0) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      ellipse(50+i*100, 50+j*100, 100, 100);
    }
  }
}
