class Animal{
color aC;
int animalX;
int animalY;
int animalWidth;
int animalHeight;
int xSpeed;
int ySpeed;

//ryan richy vars
float ratio;
float hunger;
float ryanXSpeed;
float ryanYSpeed;
PVector pos;
boolean alive;
float aw;
float ah;
float cx;
float cy;

  Animal(int x, int y){ //richie constructor
    alive = true;
  hunger = 10;
  pos= new PVector(x,y);
  aw = random(15,100);
  ah = random(10,100);
  cx = pos.x + aw/2;
  cy = pos.y + ah/2;
  ryanXSpeed = random(0,1.5) *  int(pow(-1, int(random(0,2))));
  ryanYSpeed =  random(0,1) *  int(pow(-1, int(random(0,2))));
  t.animalList.add(this);
  }




Animal(int x, int y, int aww, int ahh){ //Richie constructor
    alive = true;
    hunger = 10;
     pos= new PVector(x,y);
  aw = aww;
  ah = ahh;
  cx = pos.x + aw/2;
  cy = pos.y + ah/2;
  ryanYSpeed = random(0,1.5) *  int(pow(-1, int(random(0,2))));
  ryanYSpeed =  random(0,1) *  int(pow(-1, int(random(0,2))));
  t.animalList.add(this);
  }


 Animal(int xx, int yy, char c) { //haocheng constuctor
   cx = xx;
   cy = yy;
   aC = #ff00f7;
   xSpeed = ySpeed = 1;
   animalWidth = 40;
   animalHeight = 20;
   int xd = int(random(2));
   int yd = int(random(2));
   if (xd == 0) {
    xSpeed = 1; 
   }
   else {xSpeed=-1;}
   if (yd == 0) {
     ySpeed = 1; 
   }
   else {ySpeed=-1;}
   animalHeight = 20;
  }






Animal(int xpos, int ypos, float xs, float ys,int xW, int yH){ //ryan constructor
    animalX = xpos;
    animalY = ypos;
    ryanXSpeed = xs;
    ryanYSpeed = ys;
    animalWidth = xW;
    animalHeight = yH;
  }




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
alive = true;
aC = color(int(random(0,255)),int(random(0,255)),int(random(0,255)));
animalX =mouseX;
animalY = mouseY;
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
