class flower{
  float posx,posy;
  color c;
  ArrayList<petal> attachedP;
  ArrayList<petal> freeP;
  flower(float posx,float posy,color c){
    this.posx=posx;
    this.posy=posy;
    this.c=c;
    attachedP=new ArrayList<petal>();
    freeP=new ArrayList<petal>();
    for(int i=0;i<6;i++){
      attachedP.add(new petal(posx,posy,i*60,c));
    }
  }
  void display(){
   for(petal x:attachedP) x.run();
   for(petal x:freeP) x.run();
   noStroke();
   fill(255,255,0);
   ellipse(posx,posy,25,25);
  }
  boolean checkPoint(float x,float y){
    return dist(x,y,posx,posy)<12.5;
  }
  void Activation(){
    int petalNum=attachedP.size();
    if(petalNum==0) return;
    else{
      int randomPetal=int(random(0,petalNum));
      petal x=attachedP.get(randomPetal);
      if(!x.AreYouActive()){
        attachedP.remove(x);
        x.wakeUp(random(-5,1),random(-5,1));
        freeP.add(x); 
      }
    }
  }  
};