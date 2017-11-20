class petal{
  float posx,posy,velx,vely,angle;
  color c;
  boolean state;
  petal(float posx,float posy,float angle,color c){
    this.posx=posx;
    this.posy=posy;
    this.angle=angle;
    this.state=false;
    this.c=c;
  }
  void display(){
    noStroke();
    fill(c);
    pushMatrix();
    translate(posx,posy);
    rotate(radians(angle));
    bezier(0,0,-50,50,50,50,0,0);
    popMatrix();
  }
  boolean AreYouActive(){ return state; }
  void move(){
    if(state){
      velx+=0.3;
      vely+=0.3;
      posx+=velx;
      posy+=vely;
    }
  }
  void wakeUp(float velx,float vely){
      state=true;
      this.velx=velx;
      this.vely=vely;
   }
   void run(){
     display();
     move();
   }
};