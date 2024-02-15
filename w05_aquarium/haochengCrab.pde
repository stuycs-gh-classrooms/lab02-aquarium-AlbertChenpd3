class haochengCrab extends Animal {
  haochengCrab(int xx, int yy) { //Constructor
   super(xx, yy, 'p'); 
   aC=color(255, 0,0);
   animalY = tankY + t.aqHeight - t.floorHeight - animalHeight;
   
  }
  
  
  void move() {
    if(alive == true){
    if (frameCount%2==0){
    if (animalX+animalWidth>=tankX+tankW || animalX <= tankX) {
        xSpeed*= -1;
     }
     animalX+= xSpeed;
  }
  }
  }}
