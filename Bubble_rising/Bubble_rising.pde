import processing.video.*;
ArrayList<Bubble> bub=new ArrayList<Bubble>();
int n=0;
  PImage flower_main;
  
//Capture flower;
void setup(){
fullScreen(); 
flower_main=loadImage("img.png");

//flower =new Capture(this,640,480,30);
//flower.start();
  bub.add(new Bubble(100,random(width)));
  
}

void draw(){
   background(255);
  
  for(Bubble b : bub)
  {
    b.ascend();
    b.display();
    b.top();
  }
}
void keyPressed()
{
  
   bub.add(new Bubble(100,random(width)));
 
}
