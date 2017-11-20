magnet m;
ArrayList <iron> irons;
boolean attracState;
void setup(){
  size(500,500);
  m=new magnet();
  irons=new ArrayList<iron>();
  attracState=false;
}
void draw(){
  background(255);
  m.run();
  for(iron b:irons){ b.run(m); } 
}

void mousePressed(){ attracState=true; for(iron b:irons){ b.changeAttraction();} }
void mouseReleased(){ attracState=false; for(iron b:irons){ b.changeAttraction();} }
void keyPressed(){
  if(key=='n'||key=='N'){
    for(int i=0;i<10;i++){
      irons.add(new iron(random(0,500),random(0,500),random(2,15),attracState));
    }
  }
  if(key=='r'|| key=='R'){
    setup();
  }
}