ArrayList<flower> flowers;
void setup(){
  size(512,512);
  flowers=new ArrayList<flower>();
}
void draw()
{
  background(255);
  for (flower f:flowers) f.display();
}

void mousePressed(){
 for (flower f:flowers)
  if(f.checkPoint(mouseX,mouseY))
      f.Activation();
}

void keyPressed(){
  if (keyCode==CONTROL)
    flowers.add(new flower(random(50,450),random(50,450),color(random(200,255),150,150)));
  if (keyCode==ALT)
    setup();
}