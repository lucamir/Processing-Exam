class bubble{
  float posx,posy,diam,velx,vely,limit;
  bubble(float posx,float posy,float velx,float vely,float diam,float limit){
    this.posx=posx;
    this.posy=posy;
    this.velx=velx;
    this.vely=vely;
    this.diam=diam;
    this.limit=limit;
  }
  void display(){
    noStroke();
    fill(31,178,255);
    ellipse(posx,posy,diam,diam);
    fill(255);
    ellipse(posx-(diam/4),posy-diam/4,diam/3,diam/3); 
  }
  void move(){
    vely-=0.4;
    if(velx>=limit) velx-=0.2;
    posx+=log(velx);
    posy+=vely;
  }
  void run(){
    display();
    move();
  }
};