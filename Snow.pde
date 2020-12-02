
class Snow{
  float x, y, snow_ball_size; 
  {
    x = random(0, 800);
    y = random(-100, -50);
    snow_ball_size = random(1, 5);
  }
  void show(){
    fill(255); 
    stroke(255);
    circle(x, y, snow_ball_size); 
    falling(); 
  }
  void falling(){
    y = y + snow_ball_size;
    if(y>height){
      y = random(-100, -50);
    }
  }
}
  
