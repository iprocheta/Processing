
/*
  NAME: PROCHETA
  PROBLEM:Create a simple, regular static 8 lines pattern with loop.
*/

float xPos = 0;
float yPos = 25;

float xDistance = 100;
float yDistance = 10;

int i = 0;
float j = 1;
void setup()
{
  size(100,100);
  stroke(#F56F16);
  background(255);
}

void draw()
{
 
  while(i<8)
  {
    j = pow(2,i%2);
    strokeWeight(2*pow(2,j));
    line(xPos,yPos + yDistance * i, xDistance/j,yPos + yDistance*i);
    i++;
  }
}
