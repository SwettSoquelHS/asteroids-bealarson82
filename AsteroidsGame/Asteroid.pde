class Asteroid extends Mover {
  float rotation;
  int collide;
  
  Asteroid(float x, float y){
    super(x,y);
  }
 
  Asteroid(float x, float y, float speed, float direction, float rotation, int collide){
    super(x, y , speed, direction);
    radius = 20;
    this.rotation = rotation;
    collide = 0;
  }
  
  void show(){
    pushMatrix();
    beginShape();
    translate(x,y);
    scale(1.5);
    beginShape();
    rotate(radians(rotation));
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
    beginShape();
    noStroke();
    fill(#3E2B12);
    ellipse(0,-15,15,15);
    ellipse(10,15,9,9);
    ellipse(0,5,12,12);
    popMatrix();
  }
  
  
}
