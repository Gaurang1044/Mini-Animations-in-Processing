class Box extends VerletParticle2D{
  
  Box(Vec2D loc){
    super(loc);
  }
  
  void display()
  {
    fill(127);
    stroke(0);
    strokeWeight(2);
    rect(x,y,20,20);
  }
}
