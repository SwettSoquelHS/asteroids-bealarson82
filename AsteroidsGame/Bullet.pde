class Bullet extends Mover {
  private int live;
  
  Bullet(float x, float y){
    super(x,y,0,0,0);
    live = 100;
  }

  Bullet(float x, float y, float speed, float direction, float radius){
     super(x, y, speed, direction,radius);
     radius = 6;
     live = 100;
  }
 
  void update(){
    super.update();
    live--;
  }
  
  boolean isAlive(){
    return false;
  }
  
  int getLive(){
    return live;
  }
  
  void setLive(int n){
    live = n;
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
    beginShape();
    fill(#EAF20C);
    //rect(0,0, 10, 2, 10);
    ellipse(0,0,5,5);
    endShape(CLOSE);
    popMatrix();
  }    
  
  
}
