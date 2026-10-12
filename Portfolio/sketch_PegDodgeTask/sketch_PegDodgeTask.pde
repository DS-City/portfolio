// -- Global variables are declared first

// ball position
float xPos;
float yPos;

// peg positions
float peg1X, peg1Y;
float peg2X, peg2Y;
float peg3X, peg3Y;

// ball velocity
float vx;
float vy;

// ball size
float radius;

// peg size
float pegRadius;

void setup()            // <-- Whatever commands we put in here will be executed once.
{
  size(500, 400);
  textSize(48);

  radius = 15;

  pegRadius = 10;

  peg1X = 250;
  peg1Y = 200;

  peg2X = 70;
  peg2Y = height - 24;

  peg3X = width - 24;
  peg3Y = 70;

  xPos = 90;            // <-- Starting position of the ball
  yPos = 90;

  vx = 3.3;             // <-- Speed of the ball
  vy = 3.4;
}

void bounceOffWalls() {
  // -- Check rebounds against left and right walls
  if (xPos - radius < 0 || xPos + radius > width)
  {
    vx = -vx;
  }

  // -- Check rebounds against top and bottom walls
  if (yPos - radius < 0 || yPos + radius > height)
  {
    vy = -vy;
  }
}

void moveBall() {
  // -- Move the ball
  xPos = xPos + vx;
  yPos = yPos + vy;
}

void drawBall() {
  // -- Draw ball
  noStroke();
  fill(0, 0, 255);
  circle(xPos, yPos, 2 * radius);
}

void gameOver() {
  fill(0);
  textAlign(CENTER, CENTER);
  text("GAME OVER!", width/2, height/2);
  frameRate(0);
}

void checkPegCollision() {
  // -- Check collisions with pegs
  if (dist(xPos, yPos, peg1X, peg1Y) < radius + pegRadius)
  {
    gameOver();
  }
  if (dist(xPos, yPos, peg2X, peg2Y) < radius + pegRadius)
  {
    gameOver();
  }
  if (dist(xPos, yPos, peg3X, peg3Y) < radius + pegRadius)
  {
    gameOver();
  }
}

void drawPeg(float pegX, float pegY) {
  circle(pegX, pegY, 2 * pegRadius);
}

void drawAllPegs() {
  // -- Draw the pegs
  drawPeg(peg1X, peg1Y);
  drawPeg(peg2X, peg2Y);
  drawPeg(peg3X, peg3Y);
}

void draw()
{
  background(255);

  fill(255, 0, 0);
  stroke(0);

  drawAllPegs();

  drawBall();

  moveBall();
  // -- Check rebounds against all walls
  bounceOffWalls();

  checkPegCollision();
}
