float e=0.1;
float v1x=4;
float v1y=2;
float m1=10;
float m2=5;
float v2x=6;
float v2y=0;
float x=100;
float y=150;
float x1=300;
float d;
void setup() {
size(400,300);
}

void draw() {
background(64);
ellipseMode(CENTER);
ellipse(x, y, 25, 25);
  x += v1x;
  y+=v1y;
  if (x < 0 || x > width) {
    v1x *= -1;
  }
  if (y < 0 || y > height) {
    v1y *= -1;
  }
  
}
