class Asteroid extends Mover {
  float rotation;
  
  Asteroid(float x, float y){
    super(x,y);
  }
 
  Asteroid(float x, float y, float speed, float direction, float radius){
<<<<<<< HEAD
    super(x, y , speed, direction, radius);
=======
    super(x, y , speed, direction,radius);

>>>>>>> 79fee768c9a138bafc436e201848e9fcf0ab2a56
  }
 
  void update(){
    x = x + speed*(float)Math.cos(radians(direction));
    if(x > width + 30)
      x = 0;
    if(x < 0)
<<<<<<< HEAD
      x = width + 30;   
=======
      x = width + 30;    
>>>>>>> 79fee768c9a138bafc436e201848e9fcf0ab2a56
      
    y = y + speed*(float)Math.sin(radians(direction));
    if(y>height + 100)
      y = 0;
    if(y < 0)
      y = height + 100;
    
    rotation += 1;

  }  
  
  void show(){
    pushMatrix();
    beginShape();
    translate(x,y);
    scale(2.4);
    stroke(#3E2B12);
    strokeWeight(5);
    fill(#4D3414);
    vertex(10,-25);
    vertex(-20,-15);
    vertex(-25,5);
    vertex(-10,25);
    vertex(20,15);
    vertex(30,-5);
    vertex(10,-25);
    endShape();
    noStroke();
    fill(#3E2B12);
    ellipse(0,-15,15,15);
    ellipse(10,15,9,9);
    ellipse(0,5,12,12);
    //ellipse(0,0,radius,radius);
    popMatrix();
  }
 

  
}
