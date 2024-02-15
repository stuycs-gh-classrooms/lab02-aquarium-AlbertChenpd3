class haochengRock extends Animal {
 haochengRock(int xx, int yy) { //Constructor
  super(xx, yy,'p');
  ySpeed = 2; 
  aC = #636363;
 }
 
 
 void move() {

   if (animalX+animalWidth>= tankX+tankW || animalX <= tankX) {
        xSpeed*= -1;
     }
     if (animalY+animalHeight >= tankY + tankH - t.floorHeight) { 
         ySpeed *= 0;
         xSpeed = 0;
      }
     animalX+= xSpeed;
     animalY+= ySpeed;
  
 }
}
