
int x=0,sq_size=10;
float brush=201,randomX,randomY;
void setup(){
  size(650,650);
  randomX=random(width);
  randomY=random(height);
}

void draw(){
  background(255);
  stroke(0);
  text("Yahallo",randomX,randomY);
  for(int i=0;i<height;i+=sq_size)
    for(int j=0;j<width;j+= sq_size)
    {
      noStroke();
      //stroke(255);
      float a = dist(mouseX,mouseY,i,j);
      fill(0,0,0,a/brush*255);
      rect(i,j,sq_size,sq_size);
      
    }
  
}
