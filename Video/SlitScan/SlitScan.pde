import processing.video.*;
Capture vid;
int i=0;
int mid;

void setup()
{
  size(1280,640);//, 240);
  vid=new Capture(this, 640,480);
  vid.start();
  //background(0);
  mid=vid.width/2;
}
void draw()
{
  //image(vid,0,0);
  if (i>=width)
    i=0;
  loadPixels();
  vid.loadPixels();
  for (int j=0; j<vid.height; j++)
    pixels[i+j*width]=vid.pixels[mid+j*vid.width];
  //copy(vid,mid,0,1,vid.height,i,0,1,vid.height);
  i++;
  updatePixels();
}

void captureEvent(Capture vid) {
  vid.read();
}
