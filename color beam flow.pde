

Drops d[];
void setup()
{
  size(1000,600);
  background(255);
  d=new Drops[500];
  for(int i=0;i<500;i++)
  {
    d[i]=new Drops();
  }
}

void draw()
{

  for(int i=0;i<500;i++)
  {
    d[i].display();
    if(d[i].y>height)
    d[i]=new Drops();
  }
}

class Drops
{
  float x,y, speed;
  color c;
  Drops()
  {
    x=random(width);
    y=random(-300,0);
    speed=random(2,7);
    c=color(random(255),random(255),random(255));
  }
  void update()
  {
    y+=speed;
  }
  void display()
  {
    fill(c);
    noStroke();
    rect(x,y,2,20);
    update();
  } 
}
