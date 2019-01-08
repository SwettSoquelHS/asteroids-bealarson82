float x_pos, y_pos;
float speed, direction;

class Spaceship{ //extends Mover  
  
  void Spaceship() {  
    x_pos = width/2;
    y_pos = height/2;
    speed = 1;
    direction = 255;
  }
  
  void draw(){
    
    if(ROTATE_LEFT)
      direction -= 1.0;
    if(ROTATE_RIGHT)
      direction += 1.0;
      
    if(MOVE_FORWARD == true){
      if(speed < 3){
        speed += 0.3;
      }
    }else {
      if(speed > 0){
        speed -= 0.5;
      }
      if(speed < 0)
        speed = 0;
    } 
       
    }
    
    //upadte x and y position
    x_pos = x_pos + speed*(float)Math.cos(radians(direction));
    y_pos  = y_pos + speed*(float)Math.sin(radians(direction));
    
    pushMatrix();
    translate(x_pos, y_pos);
    rotate(radians(direction));
    beginShape();
    rotate(radians(250));
    scale(.4);
    
    fill(0);
    rect(45,-25,10,40,10);
    
    fill(255);
    arc(50,25,90,80, PI, PI*2);
    
    fill(#B9B9B6);
    ellipse(50,25,90,40);
    
    fill(255);
    triangle(50, 90, 55, 20, 45, 20); 
    
    fill(#EA151C);
    ellipse(50,70,10,10);
    
    fill(#EA151C);
    ellipse(50,50,15,15);
    
    fill(0);
    rect(20,-30,10,30,10);
    
    fill(0);
    rect(70,-30,10,30,10);
    
    endShape();
    popMatrix();
  }
  
}
