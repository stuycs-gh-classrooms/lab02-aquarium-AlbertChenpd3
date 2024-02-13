class Tank{
int floorHeight;
int x;
int y;
int aqWidth;
int aqHeight;
ArrayList<Animal> animalList = new ArrayList<Animal>();








Tank(int aqX, int aqY, int W,int H, int fH){
  floorHeight = fH;
  x = aqX;
  y = aqY;
  aqWidth =W;
  aqHeight = H;


}

void display(){
fill(0,255,255);
rect(x,y,aqWidth,aqHeight);
fill(150,75,0);
rect(x,y+aqHeight-floorHeight,aqWidth,floorHeight);

for (int i = 0; i<animalList.size(); i++){animalList.get(i).display();
animalList.get(i).move();}
}


void addAnimal(){
  Animal newAnimal;
newAnimal = new Animal();
animalList.add(newAnimal);
}


void moveAnimals(){
for (int i = 0; i<animalList.size(); i ++){
animalList.get(i).move();
  
}


}
}
