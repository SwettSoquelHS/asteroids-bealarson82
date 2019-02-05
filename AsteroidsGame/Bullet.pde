class Bullet extends Mover {
  
  Bullet(float x, float y){
    super(x, y, 0, 0);
  }
  
  Bullet(float x, float y, float speed, float direction, float radius){
     super(x, y, speed, direction);
     radius = 6;
  }
  
  void show(){
    pushMatrix();
    beginShape();
    //rect with rounded edges
    translate(x, y);
    rotate(radians(direction));
    fill(#ED1818);
    scale(.25);
    rect(-40, -2, 40, 6, 9);
    
    
    endShape();
    popMatrix();
  }    
  
}
