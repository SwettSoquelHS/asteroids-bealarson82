Bullet myBullet = new Bullet(width/2,height/2,0,0,20);

class Spaceship extends Mover {
  //Bullet myBullet = new Bullet(width/2,height/2,0,0,10);
  
  public Spaceship(float x, float y){
    super(x,y);
  }
  
  public Spaceship(float x, float y, float speed, float direction, float radius) {  
    super(x, y, speed, direction, radius);
  }
  
  void update(){
    super.update();
    myBullet.update();
  }

  void show() {
    pushMatrix();
    translate(x,y);
    rotate(radians(direction));
    beginShape();
    noStroke();
    rotate(radians(250));
    scale(.4);

    fill(#908F8F);
    rect(45, -25, 10, 40, 10);

    fill(255);
    arc(50, 25, 90, 80, PI, PI*2);

    fill(#B9B9B6);
    ellipse(50, 25, 90, 40);

    fill(255);
    triangle(50, 90, 55, 20, 45, 20); 

    fill(#EA151C);
    ellipse(50, 70, 10, 10);

    fill(#EA151C);
    ellipse(50, 50, 15, 15);

    fill(#908F8F);
    rect(20, -30, 10, 30, 10);

    fill(#908F8F);
    rect(70, -30, 10, 30, 10);

    endShape();
    popMatrix();
    
    myBullet.show();
  }
  
  void hyperSpace(Spaceship hero) {
    hero.x =(float)(Math.random()*800);
    hero.y =(float)(Math.random()*600);
    hero.direction =(float)(Math.random()*360);
  }
  
  void shipHit(Spaceship ship){
    ship.x = 400;
    ship.y = 300;
    ship.direction = 0;
  }
//gotta fix this up   
  void shipLife(int life){
    life = 3;
    life--;
  }
 
  void fire(){
    if(myBullet != null && !myBullet.isAlive()){
      myBullet.setSpeed(3);
      new Bullet(x,y,5,0,0);
    }
    myBullet.setSpeed(3);
    
  } 
  
}
