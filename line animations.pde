
/*
NAME: Procheta
PROBLEM: Control the position and size of two lines or shapes with two variables with changing values through time, thus resulting in an animation. 
*/

int i = 500;
int j = 0;

int factor = 1;
void setup()
{
  size(500,500);
}

void draw()
{
  background(255);
  if(i<0 || i>500) factor = factor * (-1);
  i -= factor;
  j+=factor;
  line(0,0,i,j);
  line(500,500,500-i,j);
}
