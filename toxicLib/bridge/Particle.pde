class Particle extends VerletParticle2D{
  
  Particle(Vec2D loc){
    super(loc);
  }
  
  void display()
  {
    fill(127);
    stroke(0);
    strokeWeight(2);
    ellipse(x,y,20,20);
  }
}
