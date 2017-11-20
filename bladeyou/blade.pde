class blade{
  float posx,posy,velx,angle;
  blade(float posx,float posy,float velx){
    this.posx=posx;
    this.posy=posy;
    this.velx=velx;
    this.angle=0;
  }
  
  void display(){
    int k=12;
    noStroke();
    fill(255,0,0);
    pushMatrix();
    translate(posx,posy);
    rotate(radians(angle));
    for(int i=0;i<k;i++){
      
      pushMatrix();
      rotate(radians(i*30));
      triangle(0,0,0,-40,25,-40);
      popMatrix();
    }
    popMatrix();
  }
  void move(){
    posx+=velx;
    angle+=velx; 
  }
  void run(){
    display();
    move();
  }
  
};