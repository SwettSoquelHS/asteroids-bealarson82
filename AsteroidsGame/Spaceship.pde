class Spaceship extends Mover {
  
  Spaceship(float x, float y, float speed, float direction) {  
    super(x, y, speed, direction);
  }

  void show() {
    pushMatrix();
    translate(x,y);
    rotate(radians(direction));
    beginShape();
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
  }
}
