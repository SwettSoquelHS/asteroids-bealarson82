class Star {
  float x,y;
  float speed, size;
  
  Star(float x, float y, float speed, float size){
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }
  void move(){
    if(x < 0 || y > height){
      x = width;
      y = random(0,height);
    }
    x -= speed;
  }
  void show(){
    fill(255);
    ellipse(x,y,size*1.5,size*1.5);
  }
  
}
