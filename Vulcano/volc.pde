class volc{
  float posx,posy;
  volc(float posx,float posy){
   this.posx=posx;
   this.posy=posy;
  }
  void display(){
    noStroke();
    fill(72,46,6);
    beginShape();
    vertex(posx-12,posy-60);
    vertex(posx+12,posy-60);
    vertex(posx+35,posy);
    vertex(posx-35,posy);
    endShape(CLOSE);
  }
  fireball fire(){ 
    return new fireball(posx,posy-60,random(5,10),random(-2,2),random(-8,-2));
  }
};