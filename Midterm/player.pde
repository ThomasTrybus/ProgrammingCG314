//Player
 
class Player {
  float x, y;
  int lives;
  int score;
  boolean canShoot;
  int timeLastShot;
  int coolDown;
  PImage img;
  
 
  Player() {
    this.x = width/2;
    this.y = height-50;
    this.lives = 3;
    this.timeLastShot = 0;
    this.coolDown = 200;
    this.img = Ship;
  }
 
  void display() {
   
    image(img, this.x, this.y);
  }
 
  void shoot() {
    if (millis() - timeLastShot > coolDown) {
      Bullet bullet = new Bullet(this.x+12.5, this.y, -5);
      bullets.add(bullet);
      timeLastShot = millis();
    }
  }
 
  void hitCheck() {
    for (int i = 0; i < bullets.size(); i++) {
      Bullet b = (Bullet) bullets.get(i);
      float distBetween = dist(b.x, b.y, this.x, this.y);
      if (b.velocity > 0 && rectIntersect(this.x, this.y, 30, 30, b.x, b.y, 5, 20)) {
        this.die();
        bullets = new ArrayList();
      }
    }
  }
 
  void die() {
    this.x = width/2;
    this.lives--;
  }
}