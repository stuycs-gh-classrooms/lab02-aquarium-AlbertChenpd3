class haochengCrab extends Animal {
  haochengCrab(int xx, int yy) {
   super(xx, yy); 
   aC=color(255, 0,0);
   animalY = tankY + t.aqHeight - t.floorHeight - animalHeight;
   
  }
  void move() {
    if (frameCount%2==0){
    if (animalX+animalWidth>tankX+tankW || animalX <= tankX) {
        xSpeed*= -1;
     }
     animalX+= xSpeed;
  }
  }
}