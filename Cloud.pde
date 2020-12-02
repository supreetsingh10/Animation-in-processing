
class Cloud {
  float x;
  float y;
  
  {
    x = random(0, 800); 
    y = 52; 
    image(Clouds, x, y);
  }

  void move(int flag) {
    if(flag == 1){
      x++;
      if(x>800){
        x = 0; 
      }
    }
    else if(flag == -1){
      x--;
      if(x < 0){
        x = 800;
      }
    }
 }
  
void show (){
   // ellipse (x, y, diameter, diameter);
  image(Clouds,x ,y);
    if(keyPressed){
      if(key == 'c'){
        move(1); 
      }if(key == 'b'){
        move(-1); 
      }
    }
  }
}
