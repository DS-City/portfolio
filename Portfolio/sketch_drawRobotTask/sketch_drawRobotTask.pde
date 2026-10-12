float robotXPos;
float robotYPos;

void setup() {
  size(250, 250);
  background(255, 255, 255);
}

void drawRobot(float robotXPos, float robotYPos, float robotWidth, float robotHeight) {
  rectMode(CENTER);
  fill(200);
  noStroke();
  rect(robotXPos, robotYPos, robotWidth, robotHeight);
  fill(0);
  rect(robotXPos, robotYPos - (robotYPos * -0.3), robotWidth * 0.90, robotHeight * 0.05);
  circle(robotXPos - (robotXPos / 4), robotYPos - (robotYPos / 6), robotWidth * 0.2);
  circle(robotXPos + (robotXPos / 4), robotYPos - (robotYPos / 6), robotWidth * 0.2);
  
}

void draw() {
  drawRobot(width/2, height/2, 100, 100);
}
