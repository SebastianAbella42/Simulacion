float[] x={50,100,200,300,350};
float[] y={250,50,150,50,250};
float[] vx={3,4,3,4,3};
float[] vy={4,3,4,3,4};
float[] v1p=new float[5];
float[] v1n=new float[5];
float[] m={5,10,5,10,5};
float[] v1pp=new float[5];
float e=0.1;
int i=0;
int w=0;
void setup() {
size(400,300);
}

void draw() {
background(64);
ellipseMode(CENTER);
if(i==5)
{
i=0;
}
w=i;
for(int h=0;h<5;h++)
{
ellipse(x[h],y[h],25,25);
}
x[0]+=vx[0];
y[0]+=vy[0];
x[1]+=vx[1];
y[1]+=vy[1];
x[2]+=vx[2];
y[2]+=vy[2];
x[3]+=vx[3];
y[3]+=vy[3];
x[4]+=vx[4];
y[4]+=vy[4];

 for(int j=1;j<5;j++)
  {
    if(dist(x[i],y[i],x[j],y[j])<=25)
    {
      if(j!=w)
      {
       v1p[i]=vx[i]*cos(45)+vy[i]*sin(45);
       v1n[i]=vx[i]*sin(45)+vy[i]*cos(45);
       v1p[j]=vx[j]*cos(45)+vy[j]*sin(45);
       v1n[j]=vx[j]*sin(45)+vy[j]*cos(45);
       v1pp[j]=(1+e)*m[i]*v1p[i]/(m[j]+m[i])+(m[j]-e*m[i])*v1p[j]/(m[i]+m[j]);
       v1pp[i]=(m[i]-e*m[j])*v1p[i]/(m[i]+m[j])+(1+e)*m[j]*v1p[j]/(m[i]+m[j]);
       vx[i]=-(v1pp[i]*cos(45)-v1n[i]*sin(45));
       vy[i]=-(v1pp[i]*sin(45)+v1n[i]*cos(45));
       vy[j]=-(v1pp[j]*sin(45)+v1pp[j]*cos(45));
       vx[j]=-(v1pp[j]*cos(45)+v1pp[j]*sin(45));
      }

      
    }
  }


 
for(int k=0;k<5;k++)
{
  if (x[k] < 0 || x[k] > width) {
    vx[k] *= -1;
  }
    if (y[k] < 0 || y[k] > height) {
    vy[k] *= -1;
  }
}
i++;
}
