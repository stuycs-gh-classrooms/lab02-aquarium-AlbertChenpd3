class crab extends Animal{

crab(int x){
animalX = x;

animalWidth = 10;
animalHeight = 5;
xSpeed = 5;

}
  
  
  void move(){
if (alive == true){ 
  animalX +=xSpeed;
  if (animalX <= 0 || animalX+animalWidth >= tankX+tankW){xSpeed = xSpeed * -1;}
}
}
  
  
  void display(){
   if(alive == true){ 
  fill(255,165,0);
    rect(animalX ,t.y+t.aqHeight-t.floorHeight - animalHeight,animalWidth,animalHeight);}
  
  }


}
