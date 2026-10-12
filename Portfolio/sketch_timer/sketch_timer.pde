int hours;
int minutes;
int seconds;
int clock;

void setup() {
  size(600, 600);

  minutes = 0;
  hours = 0;
}

String formatNumber(int num) {
  return nf(num, 2);
}

void draw() {
  background(200, 200, 200);

  clock = (frameCount % 60);

  if (clock == 0) {
    seconds++;
  }

  if (seconds == 60) {
    minutes++;
    seconds = 0;
  }

  if (minutes == 60) {
    hours++;
    minutes = 0;
  }


  textSize(40);
  textAlign(CENTER, CENTER);
  text((formatNumber(hours))+":"+(formatNumber(minutes))+":"+(formatNumber(seconds)), 300, 300);
}
