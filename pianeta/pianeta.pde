ArrayList <planet> p;
void setup(){
  size(500,500);
  frameRate(60);
  p=new ArrayList<planet>();
}

void draw(){
  noStroke();
  fill(0,40);
  rect(0,0,height,width);
  for(planet a:p){
    a.run();
  }
}

void keyPressed(){
  if(key=='N' || key=='n'){ p.add(new planet(random(50,450),random(50,450),random(15,45),color(255,255,random(0,255)))); }
}