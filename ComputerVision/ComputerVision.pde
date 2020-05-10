import processing.video.*;
Capture vid;
void setup()
{
  size(1280, 840);
  for(String s:Capture.list())
  print(s);
  vid=new Capture(this, 640,480);
  vid.start();
  background(255);
}

void captureEvent(Capture vid)
{
  vid.read();
}

void draw() {
  background(0);
  ArrayList<PVector> arr=new ArrayList<PVector>();
  float max=1000;
  PVector a=new PVector();
  vid.loadPixels();
  for (int i=0; i<vid.width; i++)
    for (int j=0; j<vid.height; j++)
    {
      float r = red (vid.pixels[i+j*vid.width]);
      float b= blue(vid.pixels[i+j*vid.width]);
      float g= green(vid.pixels[i+j*vid.width]);

      if (dist(r, g, b, 0, 0, 255)<150)
      {
      arr.add(new PVector(i,j));
 
 //       max=dist(r, g, b, 0, 0, 255);
 //       a.x=i;
 //       a.y=j;
      }
    }
  image(vid, 0, 0);
  for(int i=0;i<arr.size();i++)
  {
    noStroke();
    fill(150,30);
    ellipse(arr.get(i).x, arr.get(i).y, 20, 20);
    //ellipse(vid.width-a.x, a.y, 20, 20);
    print(arr.get(i));
  
}
}
