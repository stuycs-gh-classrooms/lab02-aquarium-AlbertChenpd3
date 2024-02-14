Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

void setup() {
  noStroke();
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();

}

void mouseClicked() {
  t.addAnimal();
  t.addFood();
}

void keyPressed(){
if (key == '1'){t.animalList.add(new haochengCrab(mouseX,mouseY));}
if (key == '2'){t.animalList.add(new haochengRock(mouseX,mouseY));}
if (key == '3'){t.animalList.add(new richieGoldfish(mouseX,mouseY));}
if (key == '4'){t.animalList.add(new richieTurtle(mouseX,mouseY));}
if (key == '5'){t.animalList.add(new ryanCrab(mouseX,mouseY,10,10,20,10));}
if (key == '6'){t.animalList.add(new ryanFish(mouseX,mouseY,10,10,20,10));}
if (key == '7'){t.animalList.add(new clownFish(mouseX,color(255,125,0), mouseX, mouseY,20, 10, 5, 5));}


}
