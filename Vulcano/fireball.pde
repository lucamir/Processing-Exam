class fireball{
  float posx,posy,velx,vely,D;
  fireball(float posx,float posy,float D,float velx,float vely){
    this.posx=posx;
    this.posy=posy;
    this.velx=velx;
    this.vely=vely;
    this.D=D;
  }
  void display(){ noStroke(); fill(180,0,0); ellipse(posx,posy,D,D); }
  void move(){ posx+=velx; posy+=vely; }
  void gravity(){ vely+=0.1; }
  void run(){ move(); gravity(); display(); }
};