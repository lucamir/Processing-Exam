class satellite{
  float posx,posy,d,r;
  satellite(float posx,float posy,float d){
    this.posx=posx;
    this.posy=posy;
    this.d=d;
    r=random(0,360);
  }
  
  void display(){
    noStroke();
    fill(106,231,255);
    pushMatrix();
    translate(posx,posy);
    rotate(radians(r));
    ellipse(d,0,10,10);
    popMatrix();
  }
  
  void centered(float posX,float posY){
    posx=posX;
    posy=posY;
  }
  
  void addRadians(){
    r+=5;
  }
  
  void run(){
    display();
    addRadians();
  }
};