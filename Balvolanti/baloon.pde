class baloon{
  float posx,posy,vely;
  int state;
  color[] c=new color[4];
  baloon(float posx,float posy,float vely){
    this.posx=posx;
    this.posy=posy;
    this.vely=vely;
    state=3;
    c[0]=color(0);
    c[1]=color(255,0,0);
    c[2]=color(255,255,0);
    c[3]=color(0,255,0);
  }
  void display(){
    noStroke();
    switch(state){
        case 0:
          fill(0);
          ellipse(posx,posy,5,25);
          fill(0);
          stroke(0);
          line(posx,posy-12.5,posx,posy-45);
          break;
        case 1:
        case 2:
        case 3:
          fill(c[state]);
          ellipse(posx,posy,20,25);
          fill(0);
          stroke(0);
          line(posx,posy+12.5,posx,posy+45);
          break;
    }

  }
   
  void decState(){ state--; }

  void move(){
    if(state==0) vely-=0.08;
    posy-=vely;
  }
  
  boolean checkMouse(){
    return dist(posx,posy,mouseX,mouseY) < 10;
  }
  
  void run(){
    display();
    move();
  }
};