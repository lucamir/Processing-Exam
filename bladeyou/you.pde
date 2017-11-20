class you{
  float posx,posy,diam;
  you(float diam){
    this.posx=mouseX;
    this.posy=mouseY;
    this.diam=diam;
  }
  void display(){
    noStroke();
    fill(234,43,232);
    ellipse(posx,posy,diam,diam);
  }
  void move(){
    posx=mouseX;
    posy=mouseY;
  }
  
  void modDiam(int x){
    diam+=x;
  }
  
  boolean hitCheck(blade bl){
    return dist(posx,posy,bl.posx,bl.posy)<(diam/2)+25;
  }
  void run(){
    display();
    move();
  }
 
};