ArrayList <baloon> bal;
void setup(){
size(600,600);
 bal=new ArrayList<baloon>();
}

void draw(){
  background(95,204,242);
  for(baloon a:bal){
    a.run();
  }
}

void keyPressed(){
  if(key=='n'||key=='N'){ bal.add(new baloon(random(25,width-25),random(height-150,height-25),random(1,5))); }
}

void mousePressed(){
  for(baloon a:bal){
    if(a.checkMouse()){ a.decState(); }
  }
}