class Animal{
color aC;
boolean alive;
int animalX;
int animalY;
int animalWidth;
int animalHeight;
int xSpeed;
int ySpeed;


Animal(int x,color c, int aX, int aY, int aW, int aH, int xS, int yS){
  animalX = x;
aC = c;
animalX = aX;
animalY = aY;
animalWidth = aW;
animalHeight = aH;
xSpeed = xS;
ySpeed = yS;
  
}

Animal(){
animalX= 200;
aC =  color(0,255,0);
animalY = 200;
animalWidth = 20;
animalHeight = 10;
xSpeed = 5;
ySpeed = 0;
  
}



Animal(int x , int y){
alive = true;
aC = color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
animalX =x;
animalY = y;
animalWidth = int(random(10,30));
animalHeight = int (random(5,10));
xSpeed = int(random(-5,5));
ySpeed = int(random(-5,5));
}


void display(){
  fill(aC);
rect(animalX,animalY,animalWidth,animalHeight);


  }
  
void move(){
this.animalX += xSpeed;
this.animalY += ySpeed;
if (animalX == 0 || animalX+animalWidth == tankX+tankW){xSpeed = xSpeed * -1;}
if (animalY ==tankY || animalY+animalHeight ==tankY+tankH-floorH){ySpeed = ySpeed * -1;}
}
  

}
