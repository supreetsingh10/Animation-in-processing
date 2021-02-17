
class Cloud {
  float x;
  float y;
  
  {
    x = random(0, 800);       //This is where the x coordinate is generated.  
    y = 52;                   //The y coordinate is fix, because we do not want the coordinate to move in Y axis. 
    image(Clouds, x, y);
  }

  void move(int flag) {           
    if(flag == 1){            //If flag == 1, then x will be incremented, if x > 800 then x will be set to 0 
      x++;
      if(x>800){
        x = 0; 
      }
    }
    else if(flag == -1){      //if flag == -1, then x will be decremented, cloud will move left, x < 0 then x will be set to 800
      x--;
      if(x < 0){
        x = 800;
      }
    }
 }
  
void show (){
   // ellipse (x, y, diameter, diameter);
  image(Clouds,x ,y);      //Image is given to the cloud
    if(keyPressed){
      if(key == 'c'){      // c and b are used to move the clouds left or right
        move(1); 
      }if(key == 'b'){
        move(-1); 
      }
    }
  }
}
