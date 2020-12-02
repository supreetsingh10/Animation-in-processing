 // Total # of images
//int imageIndex = 0; // Initial image to be displayed is the first


class Bird {

  // Declaring an array of images.
  int maxImages = 3;
  int imageIndex = 1; 
  PImage temp; 
  PImage[] Birds = new PImage[maxImages]; 
  {

    // Loading the images into the array
    // Don't forget to put the JPG files in the data folder!
    for (int i = 0; i < Birds.length; i ++ ) {
      Birds[i] = loadImage( "Bird" + i + ".png" );
    }
    temp = Birds[1]; 
  }

  void draw() {
    if(keyPressed){  
         if(key == 'f'){
           if(imageIndex% 2  == 1){
             image(Birds[1], 700, 200);
             temp = Birds[1]; 
           }
         }else{
           image(Birds[2], 700, 200);
           temp = Birds[2]; 
         }
     }
     image(temp, 700, 200); 
   }
}
