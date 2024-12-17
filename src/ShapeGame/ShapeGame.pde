// Jack Derum | Shape Game | 3 Sept 2024
int x, y;

void setup() {
  size(500, 500);
  background(#CC0044, 0);
  x = 100;
  y = 100;
}
void draw() { // draw runs on a 30 fps loop
  background(#CC0044);
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
  rectMode (CENTER)
  fill (128
  rect(width/2, 20, width, 40);
}

void target() {
}
