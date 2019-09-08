
Drops d[];
void setup()
{
  size(1200,700);
  background(0);
  d=new Drops[500];
  for(int i=0;i<500;i++)
  {
    d[i]=new Drops();
  }
}

void draw()
{
  //background(0);   //manupulate rain drop size
 // fill(0,70);  //change rain drop size
  //rect(0,0,width,height); //change rain drop size
  
for(int i=0;i<500;i++)
{
d[i].display();
if(d[i].y>d[i].endpos)
{
  d[i].end();
}
else
d[i].display();
  }
}

class Drops
{
  float x,y, speed;
  float ellipseX,ellipseY,endpos;  //draw ground ellipse
  color c;
  Drops()
  {
   init(); 
  }
  void init()
  {
    x=random(width);
    y=random(-300,0);
    speed=random(1,5);
    c=color(random(255),random(255),random(255));
    ellipseX=0;
    ellipseY=0;
    endpos=height+100-(random(300));
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
  
  void end () //when rain touches ground
  {
   stroke(c);
   noFill();
   ellipse(x,y,ellipseX,ellipseY);
   ellipseY+=speed ;
   ellipseX+=speed ;
   if (ellipseX>50)
   init();
  }
}
