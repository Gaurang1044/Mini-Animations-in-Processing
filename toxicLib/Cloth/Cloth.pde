import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.geom.*;

ArrayList<Spring> springs;
VerletPhysics2D physics;

float w=10;
int cols=40;
int rows=40;

Particle[][] particles=new Particle[rows][cols];

void setup() {

  size(600, 600);

  springs = new ArrayList<Spring>();

  physics = new VerletPhysics2D();

  Vec2D gravity =new Vec2D(0, 1);
  GravityBehavior2D gb = new GravityBehavior2D(gravity);
  physics.addBehavior(gb);

  float x = 100, y = 10;
  
  
  
  for (int i = 0; i < rows; i++) {
    for(int j = 0; j < cols; j++){
      
      Particle p1 = new Particle(x + j * w, y + i * w);
      particles[i][j]=p1;
      physics.addParticle(p1);

      //if(i!=0 && j!=0){
      //  Particle p2 = particles[i-1][j-1];
        
      //  Spring spring=new Spring(p1, p2);
      //  springs.add(spring);
      //  physics.addSpring(spring);

      //}
      //if(i!=0&&j!=cols-1){
      //Particle p2 = particles[i-1][j+1];
        
      //  Spring spring=new Spring(p1, p2);
      //  springs.add(spring);
      //  physics.addSpring(spring);
      //}
      if(i!=0){
        Particle p2 = particles[i-1][j];
        
        Spring spring=new Spring(p1, p2);
        springs.add(spring);
        physics.addSpring(spring);

      }
      if(j!=0){
        Particle p2 = particles[i][j-1];
        
        Spring spring=new Spring(p1, p2);
        springs.add(spring);
        physics.addSpring(spring);

      }
    }
  }
  
  particles[0][0].lock();
  particles[rows/2][cols/2].lock();
  particles[0][cols-1].lock();
}
void draw() {
  background(51);
  physics.update();

  for (Spring s : springs)
  {
    s.display();
  }
}
