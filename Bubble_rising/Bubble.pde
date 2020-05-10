class Bubble{
  float x=40;
  float y;
  float diameter;
  float speed=random(1.0,4.0);
  PImage flower=flower_main;
   
 Bubble(float d,float x){
   diameter=d;
   y=height;
   this.x=x;
 }
 void display()
 {
   //if(flower.available())
   //flower.read();
   imageMode(CENTER);
   image(flower,x,y,diameter,diameter);
   //stroke(0);
   //fill(255, 74, 240);
   //ellipse(x,y,diameter,diameter);
   
 }
 //void captureEvent(Capture video)
 //{
 //  video.read();
 //}
 void top()
 {
   if(y<=(-1*diameter))
     y=height+diameter;
 }
 void ascend(){
   y-=speed;
   x+=random(-2,2);
 }
 
};
