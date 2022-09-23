float e=0.1;
float v1y=3;
float m1=10;
float m2=5;
float v2y=2;
float x=100;
float y=50;
float y1=200;
float x1=100;
float d;
void setup() {
size(400,300);
}

void draw() {
background(64);
ellipseMode(CENTER);
ellipse(x, y, 25, 25);
ellipse(x1, y1, 25, 25);
  y += v1y;
  y1+=-v2y;

  if(dist(x,y,x,y1)<=25){
    v1y=-((m1-e*m2)*v1y/(m1+m2))+((1+e)*m2*(-v2y)/(m1+m2));
    v2y=(1+e)*m1*v1y/(m1+m2)+(m2-e*m1)*v2y/(m1+m2);
  }
  if (y < 0 || y > height) {
    v1y *= -1;
  }
  if (y1 < 0 || y1 > height) {
    v2y *= -1;
  }
  
}
