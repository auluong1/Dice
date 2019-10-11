void setup() {
  size(400, 400);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw() {
  int sum = 0;
  background(0);
  for(int y = 75; y <= 275; y += 100) {
    for(int x = 75; x <= 275; x += 100) {
      Die dice = new Die(x, y);
      dice.show();
      dice.roll();
      sum = sum + dice.num;
    }
  }
  fill(255);
  text("The total of all the dice is: " + sum, 200, 350);
}
void mousePressed() {
	redraw();
}
class Die {
  int myX, myY, num;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll() {
    num = (int)(Math.random() * 6) + 1;
    if(num == 1) {
      fill(0);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    if(num == 2) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
    }
    if(num == 3) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    if(num == 4) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 12, myY + 38, 5, 5);
    }
    if(num == 5) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 12, myY + 38, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    if(num == 6) {
      fill(0);
      ellipse(myX + 12, myY + 12, 5, 5);
      ellipse(myX + 38, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 12, 5, 5);
      ellipse(myX + 12, myY + 38, 5, 5);
      ellipse(myX + 38, myY + 25, 5, 5);
      ellipse(myX + 12, myY + 25, 5, 5);
    }
  }
  void show() {
    fill(255, 255, 255);
    rect(myX, myY, 50, 50);
  }
}
