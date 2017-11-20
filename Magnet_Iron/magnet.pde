class magnet{
  float posx,posy;
  boolean attraction;
  magnet(){
   this.posx=mouseX;
   this.posy=mouseY;
   attraction=false;  
  }
  void display(){
    noStroke();
    fill(191,191,191);
    ellipse(posx,posy,30,30);
    fill(255,0,0);
    rectMode(CENTER);
    rect(posx,posy,5,30);
    fill(0,0,255);
    rect(posx,posy,30,5);
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