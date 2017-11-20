int k=3;
boolean state;
ArrayList<fireball> ball;
ArrayList<volc> vulc;
void setup(){
  size(640,480);
  frameRate(60);
  state=false;
  ball=new ArrayList<fireball>();
  vulc=new ArrayList<volc>();
  for(int i=0;i<k;i++) vulc.add(new volc(random(40,600),(float)480));
}
void draw(){
  background(0);
  for(int i=0;i<k;i++){
    if((random(0,1)<0.2)&&(state)) ball.add(vulc.get(i).fire());
    vulc.get(i).display();
  }
   for(fireball f:ball) f.run();
}

void keyPressed(){ if((key=='n')||(key=='N')) state=!state; }