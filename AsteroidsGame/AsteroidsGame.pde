import java.util.ArrayList;
/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship player1;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Star[] starField = new Star[2000];
float starX, starY, starSpeed, starSize;

/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean MOVE_BACKWARD;
boolean SPACE_BAR;    //User is pressing space bar
boolean HYPER;


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
public void setup() {
  size(800, 600);
  background(0);
  noStroke();
  MOVE_FORWARD = false;
  MOVE_BACKWARD = false;
  ROTATE_LEFT = false;
  ROTATE_RIGHT = false;
  SPACE_BAR = false;
  HYPER = false;

  //initialize your asteroid array and fill it
  for (int i = 0; i < 6; i++) {
     asteroids.add(new Asteroid((float)(Math.random()*800), (float)(Math.random()*600), (float)(Math.random()+.5), (float)(Math.random()*360), 50));
  }  


  player1 = new Spaceship(width/2.0, height/2.0, 0, 0, 10);

  //initialize starfield
  for (int i = 0; i < starField.length; i++) {
    starX = random(0, width);
    starY = random(0, height);
    starSize = random(1,2);
    starSpeed = random(.5, 1.0);
    starField[i] = new Star(starX, starY, starSize, starSpeed);
  }
}

public void draw() {
  background(0);
  player1.update();
  player1.show();

  //Draw Starfield
  for (int i = 0; i < starField.length; i++) {
    starField[i].show();
    starField[i].move();
  }
  for(int i = 0; i < 6; i++){
    Asteroid rock = (Asteroid)asteroids.get(i);
    rock.show();
    rock.update();

  }
  
  checkOnAsteroids();
  
    if(ROTATE_LEFT == true)
      player1.direction -= 2.0;
      
    if(ROTATE_RIGHT == true)
      player1.direction += 2.0;
      
    if(MOVE_BACKWARD == true){
      if(player1.speed > -3){
        player1.speed -= 2.0;
      }
    }
      
    if(MOVE_FORWARD == true){
      if(player1.speed < 3){
        player1.speed += 2.0;
      }
    }else {
      if(player1.speed > 0){
        player1.speed -= 2.0;
      }
      if(player1.speed < 0)
        player1.speed = 0;
    }
    if(HYPER == true){
      player1.hyperSpace(player1);
    }



  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II

  //Update spaceship
  //TODO: Part I

  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    } else if(keyCode == DOWN){
      MOVE_BACKWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
  if(keyCode == 72){
    HYPER = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    } else if(keyCode == DOWN){
      MOVE_BACKWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
  if(keyCode == 72){
    HYPER = false;
  }
}

void checkOnAsteroids() {
  for (int i = 0; i < asteroids.size(); i++) {
    Asteroid a1 = asteroids.get(i);
    for (int j = 0; j < asteroids.size(); j++) {
      Asteroid a2 = asteroids.get(j); 
      if (a1 != a2 && a1.collidingWith(a2)) {
        a1.setDirection(a1.getDirection() + 90);
        //a1.setSpeed(a1.getSpeed()+10);
      }
    }
  }
}  
