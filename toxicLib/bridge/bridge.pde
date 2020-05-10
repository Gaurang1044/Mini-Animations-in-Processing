import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.geom.*;

// Reference to physics world
VerletPhysics2D physics;
ArrayList<Particle> particles;
//ArrayList<Box> boxes;

ArrayList<VerletSpring2D> springs;
void setup() {
  size(600, 600);
  physics= new VerletPhysics2D();
  physics.addBehavior(new GravityBehavior2D(new Vec2D(0, 0.5)));
  physics.setWorldBounds(new Rect(0, 0, width, height-20));
  particles=new ArrayList<Particle>();  
  particles.add(new Particle(new Vec2D(10, 40)));

  springs=new ArrayList<VerletSpring2D>();  
  
  //boxes=new ArrayList<Box>();  
  

  particles.get(0).lock();
  int e=0;
  for (int i=10; i<width; i+=20)
  {
    Particle p1=particles.get(e++);
    Particle p2=new Particle(new Vec2D(10+i, 40));
    particles.add(p2);
    VerletSpring2D spring=new VerletSpring2D(p1, p2, 20, 0.1);
    springs.add(spring);
  }
  particles.get(e).lock();
  for (Particle p : particles) {
    physics.addParticle(p);
  }
  for (VerletSpring2D s : springs) {
    physics.addSpring(s);
  }
}
void draw() {

  // Update the physics world
  physics.update();

  background(255);
  for (Particle p : particles) {
    p.display();
  }
  //for(Box b:boxes)
  //  b.display();
  //if(mousePressed){
  //  Box b=new Box(new Vec2D(mouseX,mouseY));
  //  boxes.add(b);
  //  physics.addParticle(b);
  //}
}
