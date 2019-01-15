class Asteroid extends Mover{
  float rotation;
 
  Asteroid(float x, float y, float speed, float size){
    super(x, y , speed, size);
  }
  void move(){
    if(x < 0 || y > height){
      x = width;
      y = random(0,height);
    }
    x -= speed;
  }
  void show(){
    pushMatrix();
    translate(x,y);
    rotate(radians(rotation));
    fill(#8B6541);
    beginShape();
    rect(0,0,x,y);
    endShape();
    popMatrix();
  }
  
}




/*
  Asteroid class
    Should extend Mover class and implement show.
    
    Initially, your asteroid may just be a simple circle or square
    but the final program should use "beginShap(), vertex(), and endShape()"
    to render the asteroid.

public class Asteroid extends Mover{   
  float rotation;
  float[] xPos = new float[5];
  float[] yPos = new float[5];
  
  Asteroid(float x, float y){
    this(x,y,0,0);
  }
  
  public Asteroid(float x, float y, float speed, float direction){
    super(x,y,speed,direction);
  }
  
  void update(){
    super.update();
    x = x + speed*(float)Math.cos(radians(direction));
    y = y + speed*(float)Math.sin(radians(direction));
    rotation += 2;
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
    rotate(radians(rotation));
    fill(#8B6541);
    beginShape();
    vertex(5.0, 0.0);
    vertex(0.0, 8.0);
    vertex(-5.0, 0.0);
    vertex(-5.0, 5.0);
    endShape();
    popMatrix();
  }
  
 
}

*/
