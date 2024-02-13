class crab extends Animal{


  void move(){
  
  if (animalX <= 0 || animalX+animalWidth >= tankX+tankW){xSpeed = xSpeed * -1;}
  }
  
  
  void display(){
  fill(255,165,0);
   if(alive == true){ rect(t.x,t.y+t.aqHeight-t.floorHeight,animalWidth,animalHeight);}
  
  }


}
