// Jack Derum | Shape Game | 3 Sept 2024
int x, y, score, tx, ty, tw, speed, shapeDist;
PImage bg1, User1, Target1;



void setup() {
  size(800, 800);
  background(128);
  bg1 = loadImage("PImage.jpg");
  User1 = loadImage("User1.png");
  Target1 = loadImage("Target1.png");
  x = 100;
  y = 100;
  score = 0;
  tx = width/2;
  ty = height/2;
  tw = 100;
  speed = 0;
  shapeDist = 0;
}
void draw() { // draw runs on a 30 fps loop
  shapeDist = int(dist(x,y,tx,ty)<10+tw/2);
  println(shapeDist);
frameRate(speed + 20);
  background(bg1);
  target();

  score();
  fill(111, 100, 113);
  stroke(100);
  //ellipse(x, y, 20, 20);
  imageMode(CENTER);
 
  image(User1,x,y);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      y = y - 10;
    } else if (key == 's' || key == 'S') {
      y = y + 10;
    } else if (key == 'a' || key == 'A') {
      x = x - 10;
    } else if (key == 'd' || key == 'D') {
      x = x + 10;
    }
  }


  //if (x < 1) {
  //x=width;
  //if (x > width-1) {
    //x=1;
}




void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - 10;
    } else if (keyCode == DOWN) {
      y = y + 10;
    } else if (keyCode == LEFT) {
      x = x - 10;
    } else if (keyCode == RIGHT) {
      x = x + 10;
    }
  }
}

void score() {
  rectMode (CENTER);
  fill(128, 128);
  rect(width/2, 20, width, 40);
  fill(0);
  textSize(30);
  text("Score:" + score, 20, 20);
  if (dist(x, y, tx, ty)<10+tw/2) {
    tx = int(random(width));
    ty = int(random(height));
    score = score + 10;
    tw = 100;
    speed = speed + 1;
  }
}

void target() {
  fill(20, 222, 23);
  //rectMode(CENTER);
 // rect(tx, ty, tw, tw);
 imageMode(CENTER);
 image(Target1, tx, ty);
  tw = tw - 1;
  if(tw < 1) {
    gameOver();
  }
}


void gameOver() {
  background(0);
  fill(255);
  text("Game Over!", width/2,height/2);
  noLoop();
}
