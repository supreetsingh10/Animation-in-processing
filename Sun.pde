class Sun{
  
  float x;
  float y;
  float diameter;
  float tempD;
  
  Sun (float tempD){
   
  x= width - 500;
  y= height;
  
  diameter=350;
}
  void ascend (){
  y--;
  x= x + 1;
 }

void draw(){
    if( y - diameter/2 > 0 && x + diameter/2 < 800){
        if(mousePressed == true){
          stroke(0);
          fill(#f9a985);
          ellipse(x, y, diameter, diameter);
          ascend();
        }else{
          fill(#f9a985);
          ellipse(x,y,diameter, diameter);
        }
    }else{
      fill(#f9a985);
      ellipse(x,y,diameter, diameter);
    }
  }
}
