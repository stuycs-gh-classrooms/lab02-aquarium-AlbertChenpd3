class Tank{
int floorHeight;
int x;
int y;
int aqWidth;
int aqHeight;
ArrayList<Animal> animalList = new ArrayList<Animal>();
ArrayList<food> foodList= new ArrayList<food>();







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

for (int i = 0; i<foodList.size(); i++){foodList.get(i).display();
foodList.get(i).move();}


}


void addAnimal(){
  Animal newAnimal;
newAnimal = new Animal();
animalList.add(newAnimal);
}

void addFood(){
food newfood;
newfood = new food(mouseX,mouseY,2.5,2.5);
foodList.add(newfood);
}



void moveAnimals(){
for (int i = 0; i<animalList.size(); i ++){
animalList.get(i).move();
  
}


}
}
