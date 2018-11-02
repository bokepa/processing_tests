
class Drop {
  float x = random(width);
  float y = random (-500,-100);
  float z = random(0,20);
  // La Z será la profundidad.
  // a menos profundidad, más grande la gota y más rápido caerá
  float len = map(z, 0,20,10,20);
  float yspeed =  map(z,0,20,1,10);
  
  void fall() {
    y = y + yspeed;
    float grav = map(z,0,20,0,0.2);
    //yspeed = yspeed + grav;
    
   
    if (y > height) {
      y = random (-200,-100);
      yspeed = random(4,10); 
  }
    
  }
  
  void show() {
    float thick = map(z,0,20,1,3);
    strokeWeight(thick);
    stroke(#ABE5F5);
    line(x,y,x,y+len);  
  }
  
}