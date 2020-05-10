import toxi.physics3d.*;
import toxi.physics3d.behaviors.*;
import toxi.geom.*;

ArrayList<Spring> springs;
VerletPhysics3D physics;

float w=10;
int cols=40;
int rows=40;

Particle[][] particles=new Particle[rows][cols];

void setup() {

  size(600, 600,P3D);

  springs = new ArrayList<Spring>();

  physics = new VerletPhysics3D();

  Vec3D gravity =new Vec3D(0, 1,0);
  GravityBehavior3D gb = new GravityBehavior3D(gravity);
  physics.addBehavior(gb);

  float x = -200, y = -200,z = -100 ;
  
  
  
  for (int i = 0; i < rows; i++) {
    for(int j = 0; j < cols; j++){
      
      Particle p1 = new Particle(x + j * w,y, z + i * w);
      particles[i][j]=p1;
      physics.addParticle(p1);

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
  particles[0][cols-1].lock();
 particles[rows-1][0].lock();
 particles[rows-1][cols-1].lock();
}
void draw() {
  background(51);
  translate(width/2,height/2);
  physics.update();

  for (Spring s : springs)
  {
    s.display();
  }
}
