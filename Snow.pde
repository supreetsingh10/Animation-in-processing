//SNOW FILE PROCESSING

class Snow{
  float x, y, snow_ball_size;       //Random location where the snow is generated 
  {
    x = random(0, 800);
    y = random(-100, -50);
    snow_ball_size = random(1, 5);
  }
  void show(){                      //Making of snowball
    fill(255); 
    stroke(255);
    circle(x, y, snow_ball_size); 
    falling(); 
  }
  void falling(){                   //Falling og snowball
    y = y + snow_ball_size;       
    if(y>height){
      y = random(-100, -50);        //Location of the snowball is reset when the y coordinate becomes greater than height. 
    }
  }
}
  
