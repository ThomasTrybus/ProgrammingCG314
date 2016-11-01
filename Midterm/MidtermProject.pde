
ArrayList bullets;
ArrayList enemies;
 
int numCol = 10;
Player player1;
Enemy testEnemy;
boolean keyAPressed = false, keyDPressed = false;
PImage Harambe;
PImage Harambe2;
PImage Ship;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  Harambe2 = loadImage("Harambe2.png");
 Harambe = loadImage("Harambe.png");
 Ship = loadImage("spaceship.png");
 //TitleScreen = true; 

  startGame();
}
 
void startGame(){
  player1 = new Player();
  bullets = new ArrayList();
  enemies = new ArrayList();
Enemies(); 
}
 
void draw() {
  //if(keyPressed) TitleScreen = false;
  
 // if TitleScreen = true{
   // fill(255);
  //}
  //if TitleScreen == false{
    
  background(35,191,250);
  
  if (player1.lives <= 0){
    startGame();
  }
  
  player1.display();
  movePlayer1();
  player1.hitCheck();
  MoveEnemies();
  Bullets();
 //NewEnemies();
}
 
void checkEnemiesWall(){
  boolean anyTouchingWall = false;
  for (int i = 0; i < enemies.size(); i++){
    Enemy enemy = (Enemy) enemies.get(i);
//    if (    
  }
}
 
 

 
void Enemies() {
  for (int i = 0; i < 30; i++) {
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60 ;
    enemies.add(new Enemy(x, y));
  }
}
 
void MoveEnemies() {
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    enemy.move();
    enemy.display();
    enemy.hitCheck();
    if (random(1) > .995) {
      enemy.shoot();
    }
  }
}
 
 
void Bullets() {
  for (int i = 0; i < bullets.size(); i++) {
    Bullet b = (Bullet) bullets.get(i);
    b.move();
    b.display();
  }
}
 
void movePlayer1() {
  if (keyAPressed) {
    player1.x -=10;
  }
  if (keyDPressed) {
    player1.x +=10;
  }
}
 
void keyPressed() {
  if (key == 'a') {
    keyAPressed = true;
  }
  else {
    if (key == 'd') {
      keyDPressed = true;
    }
    else {
      if (key == ' ') {
        player1.shoot();
      }
    }
  }
}
 
void keyReleased() {
  if (key == 'a') {
    keyAPressed = false;
  }
  else {
    if (key == 'd') {
      keyDPressed = false;
    }
  }
}  