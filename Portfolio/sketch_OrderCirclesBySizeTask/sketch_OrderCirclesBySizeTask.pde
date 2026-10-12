float[] diameters;       

void setup()
{
  size(1000, 200);
  fill(180, 50, 50, 20);
  noStroke();
  
  diameters = new float[500];
  for (int i = 0; i < diameters.length; i++) 
  {
    diameters[i] = random(1, 200);
  }
  
}

void draw()
{
  background(255);
  float xPos = 0;
  
  for (int i = 0; i<diameters.length; i++)
  {
    xPos = (diameters[i]/2) * 20;
    circle(xPos, 100, diameters[i]);
  }
  
}
