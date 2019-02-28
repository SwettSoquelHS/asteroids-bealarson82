class Bullet extends Mover {
  private int live;
/*  
  Bullet(float x, float y){
    super(x, y, 0, 0, 0);
    live = 100;
  }
  */
  
  Bullet(float x, float y, float speed, float direction, float radius){
     super(x, y, speed, direction,radius);
     radius = 6;
     live = 100;
  }
 
  void update(){
    super.update();
    live--;
  }
  
  
  void show(){
    if(live > 0){
      fill(#ED1818);
      ellipse(100,100,10,10);
      //rect(10,10, 10, 2, 2);
    }
  }    
  
  boolean isAlive(){
    if(live > 0){
      return true;
    }else{
    return false;
    }
  }
  
}
