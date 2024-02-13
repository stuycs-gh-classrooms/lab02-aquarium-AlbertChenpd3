class ryanCrab extends Animal{
  ryanCrab(int xpos, int ypos, float xs, float ys,int xW, int yH){
    super(xpos,ypos,xs,ys,xW,yH);
  }
  void display(){
  float xScaleFactor = float(animalWidth)/170;
  float yScaleFactor = float(animalHeight)/140;
  fill(255,0,0);
  pushMatrix();
  translate(animalX,animalY);
  beginShape();
  vertex(15*xScaleFactor,80*yScaleFactor);
  vertex(15*xScaleFactor,60*yScaleFactor);
  vertex(10*xScaleFactor,60*yScaleFactor);
  vertex(0*xScaleFactor,30*yScaleFactor);
  vertex(10*xScaleFactor,13*yScaleFactor);
  vertex(18*xScaleFactor,0*yScaleFactor);
  vertex(18*xScaleFactor,53*yScaleFactor);
  vertex(23*xScaleFactor,53*yScaleFactor);
  vertex(23*xScaleFactor,0*yScaleFactor);
  vertex(33*xScaleFactor,13*yScaleFactor);
  vertex(41*xScaleFactor,30*yScaleFactor);
  vertex(31*xScaleFactor,60*yScaleFactor);
  vertex(26*xScaleFactor,60*yScaleFactor);
  vertex(35*xScaleFactor,80*yScaleFactor);
  vertex(60*xScaleFactor,60*yScaleFactor);
  vertex(110*xScaleFactor,60*yScaleFactor);
  vertex(135*xScaleFactor,80*yScaleFactor);
  vertex(144*xScaleFactor,60*yScaleFactor);
  vertex(139*xScaleFactor,60*yScaleFactor);
  vertex(129*xScaleFactor,30*yScaleFactor);
  vertex(137*xScaleFactor,13*yScaleFactor);
  vertex(147*xScaleFactor,0*yScaleFactor);
  vertex(147*xScaleFactor,53*yScaleFactor);
  vertex(152*xScaleFactor,53*yScaleFactor);
  vertex(152*xScaleFactor,0*yScaleFactor);
  vertex(160*xScaleFactor,13*yScaleFactor);
  vertex(170*xScaleFactor,30*yScaleFactor);
  vertex(160*xScaleFactor,60*yScaleFactor);
  vertex(155*xScaleFactor,60*yScaleFactor);
  vertex(155*xScaleFactor,80*yScaleFactor);
  vertex(135*xScaleFactor,120*yScaleFactor);
  vertex(110*xScaleFactor,140*yScaleFactor);
  vertex(60*xScaleFactor,140*yScaleFactor);
  vertex(35*xScaleFactor,120*yScaleFactor);
  endShape(CLOSE);
  popMatrix();
  }
  void move(){
    animalX += ryanXSpeed; //moves like an animal but with a bit of randomness (okay, maybe more than a bit)
    animalY += ryanYSpeed;
    if(animalX + animalWidth > tankX + tankW){
      animalX = tankX + tankW - animalWidth;
      ryanXSpeed = random(-2,0);
    }
    if(animalX < tankX){
      animalX = tankX;
      ryanXSpeed = random(0,2);
    }
    if(animalY + animalHeight > tankY + tankH){
      animalY = tankY + tankH - animalHeight;
      ryanYSpeed = random(-2,0);
    }
    if(animalY < tankY + tankH - floorH){
      animalY = tankY + tankH - floorH;
      ryanYSpeed = random(0,2);
    }
    float randomVarianceX = random(-.3,.3);
    float randomVarianceY = random(-.3,.3);
    ryanXSpeed += randomVarianceX;
    ryanYSpeed += randomVarianceY;
  }
}
