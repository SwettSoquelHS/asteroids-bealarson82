class Spaceship extends Mover {
  int lives;
  Bullet myBullet;
  ArrayList<Bullet> bullets;
  int shiftY;

  public Spaceship(float x, float y) {
    super(x, y);
    bullets = new ArrayList<Bullet>();
    lives = 5;
  }

  public Spaceship(float x, float y, float speed, float direction, float radius) {  
    super(x, y, speed, direction, radius);
    bullets = new ArrayList<Bullet>();
    lives = 5;
  }

  void update() {
    super.update();
    for (int i = 0; i < bullets.size(); i++) {
      Bullet bull = bullets.get(i);
      if (bull != null)
        bull.update();
      if (bull.getLive() < 0)
        bullets.remove(bull);
    }
  }

  void show() {
    if(lives >= 1){
      pushMatrix();
      translate(x, y);
      rotate(radians(direction));
      beginShape();
      noStroke();
      rotate(radians(267));
      scale(.4);
  
      //middle leg
      fill(#908F8F);
      rect(-5, -50, 10, 40, 10);
      //white bowl
      fill(255);
      arc(0, 0, 90, 80, PI, PI*2);
      //top of bowl
      fill(#B9B9B6);
      ellipse(0, 0, 90, 40);
      //triangle
      fill(255);
      triangle(-5, -10, 5, -6, -4, 60); 
      //top red dot
      fill(#EA151C);
      ellipse(-3, 40, 10, 10);
      //bottom red dot
      fill(#EA151C);
      ellipse(0, 20, 15, 15);
      //bottom leg
      fill(#908F8F);
      rect(-30, -50, 10, 30, 10);
      //top leg
      fill(#908F8F);
      rect(22, -50, 10, 30, 10);
  
      // ellipse(0,0,radius,radius);
  
      endShape();
      popMatrix();
  
      for (int i = 0; i < bullets.size(); i++) {
        Bullet bull = bullets.get(i);
        if (bull != null)
          bull.show();
      }
      textSize(20);
      fill(#FEFF1A);
      text("Lives: " + lives, 650,20);

    } else{
      fill(0);
      pushMatrix();
      textSize(100);
      fill(#FEFF1A);
      text("YOU DIED", 100, 100);
      popMatrix();
    }
      
  }

  void hyperSpace(Spaceship hero) {
    hero.x =(float)(Math.random()*800);
    hero.y =(float)(Math.random()*600);
    hero.direction =(float)(Math.random()*360);
  }

  void shipHit(Spaceship ship) {
    ship.x = 400;
    ship.y = 300;
    ship.direction = 0;
    lives--;
  }

  void fire() {
    if (bullets.size() < 11) {
      myBullet = new Bullet(this.x, this.y, this.speed + 3, this.direction, 5.0);
      bullets.add(myBullet);
    }
  } 

  boolean asteroidHit(Asteroid ass) {
    for (int i = 0; i < bullets.size(); i++) {
      Bullet bull = bullets.get(i);
      if(bull.collidingWith(ass)) {
        ass.setExist(false);
        bull.setLive(0);
      }
    }
    return false;
  }
}
