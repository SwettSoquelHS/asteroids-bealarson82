class smAsteroid extends Mover{
  float rotation;
  
  smAsteroid(float x, float y){
    super(x,y);
  }
 
  smAsteroid(float x, float y, float speed, float direction, float radius){
    super(x, y , speed, direction,radius);
    radius = 50;
    this.rotation = rotation;
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
    
    
    x = x + speed*(float)Math.cos(radians(direction));
    y = y + speed*(float)Math.sin(radians(direction));
    rotation += 1;
  }
    
  
  void show(){
    pushMatrix();
    beginShape();
    translate(x,y);
    scale(.75);
    beginShape();
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
