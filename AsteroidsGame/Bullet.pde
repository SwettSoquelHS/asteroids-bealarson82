class Bullet extends Mover {
  private int live;
  
  Bullet(float x, float y){
    super(x,y,0,0,0);
    live = 1000;
  }

  Bullet(float x, float y, float speed, float direction, float radius){
     super(x, y, speed, direction,radius);
     radius = 6;
     live = 1000;
  }
 
  void update(){
    if(live-- > 0)
      super.update();
  }
  
  boolean isAlive(){
    return live > 0;
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
    beginShape();
    fill(#ED1818);
    rect(0,0, 10, 2, 10);
    endShape(CLOSE);
    popMatrix();
  }    
  
  
}
