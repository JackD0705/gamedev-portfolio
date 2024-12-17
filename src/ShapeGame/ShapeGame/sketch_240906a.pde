// Jack Derum | Shape Game | 3 Sept 2024
int x, y, score, tx, ty, tw, speed;

void setup() {
  size(500, 500);
  background(128);
  x = 100;
  y = 100;
  score = 0;
  tx = width/2;
  ty = height/2;
  tw = 100;
}
void draw() { // draw runs on a 30 fps loop
frameRate(speed + 20);
  background(128);
  target();

  score();
  fill(111, 100, 113);
  stroke(100);
  ellipse(x, y, 20, 20);
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
  if (dist(x, y, tx, ty)<30) {
    tx = int(random(width));
    ty = int(random(height));
    score = score + 10;
    tw = 100;
    speed = speed + 1;
  }
}

void target() {
  fill(20, 222, 23);
  rectMode(CENTER);
  rect(tx, ty, tw, tw);
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
