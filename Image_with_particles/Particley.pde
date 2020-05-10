class Particle{
  float x=40;
  float y;
  float diameter=6;
   float speedx=random(-5.0,5.0);
  float speedy=random(-5.0,5.0);
 // PImage flower=loadImage("img.png");
 
 Particle(float x,float y){
   //diameter=d;
   this.y=y;
   this.x=x;
 }
 void display()
 {
   //imageMode(CENTER);
   //image(flower,x,y,diameter,diameter);
   stroke(0);
   img.loadPixels();
   fill(img.get(int(x),int(y)),255);
   ellipse(x,y,diameter,diameter);
   
 }
 void boundary()
 {
   if(y>=height-diameter/2||y<=diameter/2)
     speedy*=-1;
   if(x>=width-diameter/2||x<=diameter/2)
     speedx*=-1;
 }
 void move(){
   y+=speedy;
   x+=speedx;
 }
 
};
