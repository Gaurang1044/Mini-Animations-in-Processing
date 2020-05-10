Particle[] p;
int n=5000;
PImage img;
void setup() {

  size(1000, 667);
  p=new Particle[n];
  img=loadImage("tiger.jpg");

  for (int i=0; i<n; i++)
    p[i]=new Particle(width/2, height/2);
  background(0);

}

void draw() {
  //background(0);
  for (int i=0; i<n; i++)
  {
    p[i].display();
    p[i].boundary();
    p[i].move();
  }
}
