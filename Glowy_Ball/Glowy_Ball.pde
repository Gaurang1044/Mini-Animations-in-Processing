void setup(){
  fullScreen();
   background(20);
  frameRate(80);
}
int a=40,b=20,c=5,d=4,ball_h=20,ball_w=20,grid=10;

void draw(){
  //background(0);//,30,20);
  for(int i=0;i<width;i+=grid)
  for(int j=0;j<height;j+=grid)
  {
     fill(150-dist(a,b,i,j),180-dist(a,b,i,j),180-dist(a,b,i,j),dist(a,b,i,j)) ;
     stroke(0);
     noStroke();
     rect(i,j,grid,grid);
  }
  noStroke();
  color ballcolor=(color(200,240,240,200));
  fill(ballcolor);
  ellipse(a,b,ball_w,ball_h);
  
  a+=c;b+=d;
  if(a>width-(ball_w/2) ||a<(ball_w/2))
    c*=-1;
  
  if(b>height-(ball_h/2)||b<(ball_h/2))
    d*=-1;
  
}
void mousePressed()
{
  a=mouseX;
  b=mouseY;
  
}
//for (int i=0;i<n;i++)
//{
//  a=a+1;
//  b=b+1;
  
//}
