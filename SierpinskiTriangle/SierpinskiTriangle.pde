

void setup() {
  size(800, 800);
}
int N=6;

void draw() {

  translate(width/2, height/2);
  rotate(PI/6);
  triangles(0, 0, 0);
}


void triangles(float x, float y, int n) {
  if ( n >= N )
    return;

  float len = width / 3 * pow(0.5, n);
  float theta = 2.0/3.0*PI;
  float x0=0, x1=0, y0=0, y1=0;

  for (int i = 0; i < 3; i++ ) {
    x0 = x+len * cos( i * theta );
    y0 = y+len * sin( i * theta );
    x1 = x+len * cos( (i+1) * theta );
    y1 = y+len * sin( (i+1) * theta );

    line(x0, y0, x1, y1);
  }

  len = len / 2;
  for (int i = 0; i < 3; i++ ) {
    triangles(x+len*cos(i*theta), y+len*sin(i*theta), n+1);
  }
}
