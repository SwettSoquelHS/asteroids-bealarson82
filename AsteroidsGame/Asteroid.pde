class Asteroid extends Mover {
  float rotation;
  boolean exists;
  
  Asteroid(float x, float y){
    super(x,y);
    exists = true;
  }
 
  Asteroid(float x, float y, float speed, float direction, float radius){
    super(x, y , speed, direction,radius);
    exists = true;
  }
 
  void update(){
    x = x + speed*(float)Math.cos(radians(direction));
    if(x > width + 30)
      x = 0;
    if(x < 0)
      x = width + 30;   
    
    y = y + speed*(float)Math.sin(radians(direction));
    if(y>height + 100)
      y = 0;
    if(y < 0)
      y = height + 100;
    
    rotation += 1;

  }  
  
  void show(){
    if(exists){
      pushMatrix();
      beginShape();
      translate(x,y);
      scale(2.4);
      stroke(#795F46);
      strokeWeight(5);
      fill(#937253);
      vertex(10,-25);
      vertex(-20,-15);
      vertex(-25,5);
      vertex(-10,25);
      vertex(20,15);
      vertex(30,-5);
      vertex(10,-25);
      endShape();
      noStroke();
      fill(#795F46);
      ellipse(0,-15,15,15);
      ellipse(10,15,9,9);
      ellipse(0,5,12,12);
      //ellipse(0,0,radius,radius);
      popMatrix();
    }
  }
 
 void setExist(boolean bool){
   exists = bool;
   radius = 0;
 }
 boolean getExist(){
   return exists;
 }

  
}
