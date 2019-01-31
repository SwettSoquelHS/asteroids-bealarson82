class Asteroid extends Mover {
  float rotation;
 
  Asteroid(float x, float y, float speed, float size, float radius){
    super(x, y , speed, size, radius);
  }
  void move(){
    if(x < 0 || y > height){
      x = width;
      y = random(height);
    }
    x -= speed;
    y -= speed;
    
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
    vertex(20,60);
    vertex(-10,70);
    vertex(-15,90);
    vertex(0,110);
    vertex(30,100);
    vertex(40,80);
    vertex(20,60);
    endShape();
    beginShape();
    noStroke();
    fill(#3E2B12);
    ellipse(10,70,15,15);
    ellipse(20,90,9,9);
    ellipse(-10,90,12,12);
    popMatrix();
  }
  
  
}
