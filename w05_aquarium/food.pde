class food {


int foodX;
int foodY;
float nourishment;


food(int x, int y,float z){
  foodX = x;
  foodY = y;
  nourishment = z;
}




void display(){
  fill(165,42,42);
rect(foodX,foodY,10,10);

}


}
