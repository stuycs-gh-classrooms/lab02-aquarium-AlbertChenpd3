class crab extends Animal{


  void move(){
if (isAlive() == true){  
  if (animalX <= 0 || animalX+animalWidth >= tankX+tankW){xSpeed = xSpeed * -1;}
}
}
  
  
  void display(){
   if(isAlive() == true){ 
  fill(255,165,0);
    rect(t.x,t.y+t.aqHeight-t.floorHeight,animalWidth,animalHeight);}
  
  }


}
