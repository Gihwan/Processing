//bezierCurve1.pde
//Draw the bezierCurve1
//2017/4/25
//2-3-41 Gihwan Doh

void setup(){
size(700,500);

}

float px0=75,px1=170,px2=350,px3=500;
float py0=260,py1=120,py2=90,py3=200;
float px=0,py=0;

void draw(){
strokeWeight(8);
point(px0,py0);
point(px1,py1);
point(px2,py2);
point(px3,py3);

  strokeWeight(5);
  for(float t=0; t<1.0; t+=0.01){
px=px0*(1-t)*(1-t)*(1-t)+px1*3*t*(1-t)*(1-t)+px2*3*t*t*(1-t)+px3*t*t*t;
py=py0*(1-t)*(1-t)*(1-t)+py1*3*t*(1-t)*(1-t)+py2*3*t*t*(1-t)+py3*t*t*t;    
point(px,py);
}
  
  
  
}