class clownFish extends Animal{

clownFish(int x,color c, int aX, int aY, int aW, int aH, int xS, int yS){
super( x, c,  aX,  aY,  aW,  aH,  xS,  yS);

}
  
void move(){
if (alive == true){
this.animalX += xSpeed/2;
this.animalY += ySpeed/2;
if (animalX == 0 || animalX+animalWidth >= tankX+tankW){xSpeed = xSpeed * -1;}
if (animalY ==tankY || animalY+animalHeight >=tankY+tankH-floorH){ySpeed = ySpeed * -1;}
}

}


void display(){
  if (alive == true){
fill(255,165,0);
rect(animalX,animalY,animalWidth,animalHeight);
fill(255,255,255);
rect(animalX + animalWidth/2, animalY, animalWidth/3, animalHeight);
  }
}




}
