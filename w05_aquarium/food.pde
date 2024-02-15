class food {


int foodX;
int foodY;
float nourishment;
float ySpeed;

food(int x, int y,float z,float s){
  foodX = x;
  foodY = y;
  nourishment = z;
  ySpeed = s;
}




void display(){
  fill(165,42,42);
rect(foodX,foodY,10,10);


}


void move(){
foodY += ySpeed;
if (foodY + 10 >= tankY +tankH-floorH){ySpeed = 0;}
}


}
