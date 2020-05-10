import processing.video.*;

Capture video;

void setup(){
  size(800,800);
  printArray(Capture.list());
  video= new Capture(this,640,480,30);
  video.start();
}
void captureEvent(Capture video)
{
  video.read();
}
void draw()
{
  background(0);
  
  loadPixels();
  video.  loadPixels();
  for(int i=0;i<video.width;i++)
  for(int j=0;j<video.height;j++)
  { 
    int imgloc=video.width-i-1+j*video.width;
    pixels[i+j*width]=video.pixels[imgloc];
  }
  updatePixels();
  //image(video,0,0,mouseX,mouseY);
}
