ArrayList<blade> B;
you x;
int inf,sup,count;
float p=0.05;
void setup(){
 loop();
 size(700,700);
 frameRate(60);
 x=new you(50);
 B=new ArrayList<blade>();
 inf=3;
 sup=10;
 count=1;
}

void draw(){
  background(0);
  count++;
  if(count==180)
  {
    count=1;
    x.modDiam(5);
    inf++;
    sup++;
  }
  if(random(0,1)<p)
  {
     B.add(new blade(-50,random(0,700),random(inf,sup))); 
  }
  
  x.run();
  for(blade b:B)
  {
    b.run();
    if(x.hitCheck(b))
    {
      textAlign(CENTER,CENTER);
      textSize(50);
      fill(255,255,0);
      text("GAME OVER",350,350);
      noLoop();
    }
  }
}

void keyPressed()
{
  if(key=='r' || key=='R')
    setup();
}