class richieTurtle extends Animal {
  richieTurtle(int x, int y) {
    super(x, y);
    ryanXSpeed = random(.25, .75) * int(pow(-1, int(random(0, 2))));
    ryanYSpeed = 0;
    aw = random(60, 80);
    ah = random(50, 55);
  }
  void display() {
 if (alive == true){
    fill(0, 48, 32);
    arc(pos.x + aw/3, pos.y + ah/2, aw/1.5, ah, PI, 2*PI, CHORD);
    fill(0, 200, 0);
    rect(pos.x, pos.y + ah/2, aw/6, ah/2);
    rect(pos.x + aw/2, pos.y + ah/2, aw/6, ah/2);
    if (ryanXSpeed>0) {
      circle(pos.x + 5 * aw/6, pos.y + ah/2, aw/3);
    }
    if (ryanXSpeed<0) {
      circle(pos.x - aw/6, pos.y + ah/2, aw/3);
    }
 }
  }
  
   void swim(){
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    if(alive){
    
    if (cx >= width - aw/2 ||
        cx <= aw/2) {
        ryanXSpeed*= -1;
     }
     if (cy >= height - t.floorHeight -ah/2||
         cy <= tankY + ah/2 ) {
         ryanYSpeed*= -1;
  }}
  pos.x += ryanXSpeed;
  pos.y += ryanYSpeed;
}
  
  

  
  
  boolean collisionCheck(richieGoldfish other) {
    return (dist(pos.x + 5 * aw/6, pos.y + ah/2, other.cx, other.cy)<other.aw/4);
  }
  void eat(richieGoldfish other) {
    if (other.perished && !other.STOP && collisionCheck(other)) {
      other.STOP = true;
      ah += log(other.fsize) * ratio;
      aw += log(other.fsize);
    }
  }
}
