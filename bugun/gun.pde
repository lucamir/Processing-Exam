class gun{
  float posx,posy;
  boolean state;
  color[] c=new color[2];
  gun(float posx,float posy,boolean state){
    this.posx=posx;
    this.posy=posy;
    this.state=state;
    c[0]=color(0,0,255);
    c[1]=color(255,0,0);
  }
  void display(){
    noStroke();
    fill(0,255,0);
    rectMode(CENTER);
    rect(posx,posy,100,20);
    if(state) fill(c[1]);
    else fill(c[0]);
    rect(posx-35,posy,30,20);
  }
  
  void changeState(){
    state=!state;
  }
  boolean checkState(){ return state; }
  bubble shot(){
    return new bubble(posx+49,posy,random(4,64),random(4,10),random(10,40),random(2,4));
  }
  void move(){
    posx=mouseX;
    posy=mouseY;
  }
  void run(){
    display();
    move();
  }
  
};