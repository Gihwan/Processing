

int [][] maru=new int [10][2];

void setup(){
size(800,600);
  for (int i=0; i<10; i++) {
    for (int j=0; j<2; j++) {
      maru[i][j]=(int)random(50,500);
    }
  }
}

void draw(){
  background(220);
  fill(255,255,0);

  
  for (int i=0; i<10; i++) {
  ellipse(maru[i][0],maru[i][1],50,50);}
  
    for (int i=0; i<10; i++) {
    maru[i][0]+=3;}
    
  
      for (int i=0; i<10; i++) {
    if(maru[i][0]>=800){maru[i][0]=0;}
  }
  

}
