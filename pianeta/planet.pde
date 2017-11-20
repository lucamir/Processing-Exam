class planet{
  float posx,posy,dim;
  color c;
  satellite s;
  planet(float posx,float posy,float dim,color c){
    this.posx=posx;
    this.posy=posy;
    this.dim=dim;
    this.c=c;
    s=new satellite(posx,posy,dim*2);
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(posx,posy,dim,dim);
  }
  
  void move(){
    posx+=random(-0.5,0.5);
    posy+=random(-0.5,0.5);
    s.centered(posx,posy);
  }
  
  void run(){
    display();
    move();
    s.run();
  }
  
};