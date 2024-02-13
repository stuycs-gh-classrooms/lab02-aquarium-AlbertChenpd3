class ryanFish extends Animal{
  ryanFish(int xpos, int ypos, float xs, float ys,int xW, int yH){
    super(xpos,ypos,xs,ys,xW,yH);
  }
  void display(){
    if (alive == true){
    float xScaleFactor; //multiplies x and y offsets so the fish can still fit in the width and height
    float yScaleFactor;
    xScaleFactor = float(animalWidth)/75;
    yScaleFactor = float(animalHeight)/35;
    stroke(255);
    fill(255,150,0);
    if(xSpeed > 0){
      beginShape();
      vertex(animalX,animalY+5*yScaleFactor);
      vertex(animalX,animalY+30*yScaleFactor);
      vertex(animalX+25*xScaleFactor,animalY+18*yScaleFactor);
      vertex(animalX+30*xScaleFactor,animalY+30*yScaleFactor);
      vertex(animalX+45*xScaleFactor,animalY+35*yScaleFactor);
      vertex(animalX+60*xScaleFactor,animalY+30*yScaleFactor);
      vertex(animalX+75*xScaleFactor,animalY+22*yScaleFactor);
      vertex(animalX+65*xScaleFactor,animalY+18*yScaleFactor);
      vertex(animalX+75*xScaleFactor,animalY+17*yScaleFactor);
      vertex(animalX+60*xScaleFactor,animalY+5*yScaleFactor);
      vertex(animalX+45*xScaleFactor,animalY);
      vertex(animalX+30*xScaleFactor,animalY+5*yScaleFactor);
      vertex(animalX+25*xScaleFactor,animalY+17*yScaleFactor);
      endShape(CLOSE);
    }
    else{
      beginShape();
      vertex(animalX+75*xScaleFactor,animalY+5*yScaleFactor);
      vertex(animalX+75*xScaleFactor,animalY+30*yScaleFactor);
      vertex(animalX+50*xScaleFactor,animalY+18*yScaleFactor);
      vertex(animalX+45*xScaleFactor,animalY+30*yScaleFactor);
      vertex(animalX+30*xScaleFactor,animalY+35*yScaleFactor);
      vertex(animalX+15*xScaleFactor,animalY+30*yScaleFactor);
      vertex(animalX,animalY+22*yScaleFactor);
      vertex(animalX+10*xScaleFactor,animalY+18*yScaleFactor);
      vertex(animalX,animalY+17*yScaleFactor);
      vertex(animalX+15*xScaleFactor,animalY+5*yScaleFactor);
      vertex(animalX+30*xScaleFactor,animalY);
      vertex(animalX+45*xScaleFactor,animalY+5*yScaleFactor);
      vertex(animalX+50*xScaleFactor,animalY+17*yScaleFactor);
      endShape(CLOSE);
    }}
  }
  
  
  void move(){
    animalX += ryanXSpeed; //moves in a sine wave
    animalY += ryanYSpeed * sin(radians(frameCount));
    if(animalX + animalWidth > tankX + tankW){
      ryanXSpeed *= -1;
      animalX = tankX + tankW - animalWidth;
    }
    if(animalX < tankX){
      ryanXSpeed *= -1;
      animalX = tankX;
    }
    if(animalY + animalHeight > tankY + tankH - floorH){
      ryanYSpeed *= -1;
      animalY = tankY + tankH - floorH - animalHeight;
    }
    if(animalY < tankY){
      ryanYSpeed *= -1;
      animalY = tankY;
    }
  }
}
