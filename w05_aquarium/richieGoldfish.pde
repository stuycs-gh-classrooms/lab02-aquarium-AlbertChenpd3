class richieGoldfish extends Animal {
  
  float fsize;
  boolean perished;
  boolean STOP;
  richieGoldfish(int x, int y) {
    super(x, y);
    fsize = aw * ah * PI;
    ratio = ah/aw;
  }
  richieGoldfish(int x, int y, int z, int w) {
    super(x, y, z, w);
    fsize = aw * ah * PI;
    ratio = ah/aw;
  }
  void display() {
    if(!STOP){
    hunger-= .1;
    //xywh
    if (perished) {
      ryanYSpeed = 1;
      ryanXSpeed = 0;
      fill(#808080);
      ellipse(cx, cy, aw, ah);

     if (pos.y >= height - t.floorHeight + random(00,20)) {
    ryanYSpeed = 0;
  }
    }
    else if (alive) {
      fill(250, 200, 50);
      ellipse(cx, cy, aw, ah);
      if (ryanXSpeed<0) {
        triangle(cx + aw/2, cy, cx + aw, cy + ah/2, cx + aw, cy - ah/2);
        fill(#000000);
        circle(cx - aw /4, cy - ah/5, sqrt(log(fsize)));
      }
      if (ryanXSpeed>0) {
        triangle(cx - aw/2, cy, cx - aw, cy + ah/2, cx - aw, cy - ah/2);
        fill(#000000);
        circle(cx + aw /4, cy - ah/5, sqrt(log(fsize)));
      }
      if (hunger<0) {
        perish();
      }
    }
    }}
    
    
     void move(){
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
    
    
    
    
    
    
  void checkEat(richieGoldfish other) {
    if (fsize > other.fsize && collisionCheck(other) && other.alive) {
      other.die();
      fsize += other.fsize;
      hunger += log(other.fsize);
      aw = sqrt(fsize/ratio/PI);
      ah = sqrt(fsize/ratio/PI)*ratio;
    }
  }
  boolean collisionCheck(richieGoldfish other) {
    if (other == this) {
      return false;
    } else {
      return(dist(this.cx, this.cy, other.cx, other.cy)
        <= (this.aw/2 + other.aw/2));
    }
  }//collisionCheck
  void die() {
    alive = !alive;
  }
  void perish() {
    alive = !alive;
    perished = true;
  }
}
