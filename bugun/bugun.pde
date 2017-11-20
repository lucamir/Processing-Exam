ArrayList <bubble> b;
gun x;
void setup(){
  size(512,512);
  b=new ArrayList<bubble>();
  x=new gun(0,0,false);
}
void draw(){
  background(109,195,240);
  if((x.checkState())&&(mousePressed)) b.add(x.shot());
  for (bubble a:b) a.run();
  x.run();
}
void mousePressed(){
  if((mouseButton==LEFT)&&(!x.checkState()))
   b.add(x.shot());
}
void keyPressed(){
  if(key=='c' || key=='C'){
    x.changeState();
  }
}