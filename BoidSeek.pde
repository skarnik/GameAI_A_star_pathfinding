
class BoidSeek extends Boid
{
  
  BoidSeek(){
  
    position = new PVector(width/4, height/4 );
    velocity = new PVector(0,0);
    destination = new PVector(width/4,height/4);


    max_speed = 40;
    max_accel = 40; 
 
    roS = 3;
    roD = 100;
    r_rotS = radians(1);
    r_rotD = 20;
    max_ang_accel = 30;
    max_rotation  = 0.9;
  
    time_to_target = 1.3;
    time_to_target_rot = 1.2;
    opacity = 255;
    scale = 1;
    boidcolor = color(0, 0, 0);
    crumbcolor = color(0, 0, 0);
    
  }
  
  void run(){
    
    //findMouse();
    //moveRandom();
    seek();
    breadcrumb_trail();
    

  }
  
  

  
  }

  

