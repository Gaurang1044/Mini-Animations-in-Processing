import processing.video.*;
Capture vid;
PImage prev;
void setup()
{
  size(640,480);
  vid=new Capture(this,640,480);
  vid.start();
}

void captureEvent(Capture vid)
{
  prev.copy(vid,0,0,vid.width,vid.height,0, 0, prev.width, prev.height);
  prev.updatePixels();
  vid.read();
}
void draw(){
  background(255);
  loadPixels();
  vid.loadPixels();
  //prev.loadPixels();
  prev=createImage(vid.width,vid.height,0);
  for(int i=0;i<vid.width;i++)
  for(int j=0;j<vid.height;j++)
  {
      float r = red (vid.pixels[i+j*vid.width]);
      float b= blue(vid.pixels[i+j*vid.width]);
      float g= green(vid.pixels[i+j*vid.width]);
      float pr = red (prev.pixels[i+j*vid.width]);
      float pb= blue(prev.pixels[i+j*vid.width]);
      float pg= green(prev.pixels[i+j*vid.width]);


    if(dist(r,g,b,pr,pg,pb)>200)
      pixels[i+j*vid.width]=color(0);
    else
        pixels[i+j*vid.width]=color(255);
    
  }
  updatePixels();
  
}
