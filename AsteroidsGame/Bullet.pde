class Bullet extends Mover {
  
  Bullet(float x, float y, float speed, float size){
     super(x, y, speed, size);
  }
  
  void show(){
    pushMatrix();
    beginShape();
    //rect with rounded edges
    
    
    endShape();
    popMatrix();
    
  
}
