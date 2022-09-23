float e=0.1;
float v1x=4;
float v1y=0;
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
ellipse(x1, y, 25, 25);
  x += v1x;
  x1+=-v2x;

  if(dist(x1,150,x,150)<=25){
    v1x=-((m1-e*m2)*v1x/(m1+m2))+((1+e)*m2*(-v2x)/(m1+m2));
    v2x=(1+e)*m1*v1x/(m1+m2)+(m2-e*m1)*v2x/(m1+m2);
  }
  if (x < 0 || x > width) {
    v1x *= -1;
  }
  if (x1 < 0 || x1 > width) {
    v2x *= -1;
  }
  
}
