class iron{
 float posx,posy,dim;
 color c;
 boolean attraction;
 iron(float posx,float posy,float dim,boolean attracState){
   this.posx=posx;
   this.posy=posy;
   this.dim=dim;
   this.c=color(random(80,160));
   attraction=attracState;
 }
 void display(){
   noStroke();
   fill(c);
   ellipse(posx,posy,dim,dim);
 }
 void changeAttraction(){
   attraction=!attraction;
  }
 void move(magnet m){
   if(attraction){
     posx-=((posx-m.posx)/dist(posx,posy,m.posx,m.posy))*2;
     posy-=((posy-m.posy)/dist(posx,posy,m.posx,m.posy))*2;
   }
   else{
    posx+=((posx-m.posx)/dist(posx,posy,m.posx,m.posy))*2;
    posy+=((posy-m.posy)/dist(posx,posy,m.posx,m.posy))*2;
   }
}
 void run(magnet m){
   display();
   move(m);
 }
};