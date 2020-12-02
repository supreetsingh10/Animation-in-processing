


Sun S1;


//Building B1;

FTree  T = new FTree(); 
FTree T2 = new FTree(); 
//FTree[] forest = new FTree[5]; 

//int i;

PImage Tree1;

PImage Building;

PImage Clouds;

Snow[] Snows = new Snow[100];

Cloud[] badal = new Cloud[20]; 


void snowMaker(){
  for(int i = 0; i<Snows.length; i++){
    Snows[i] = new Snow(); 
  }
}

/*void afforest(){
  for(int i = 0; i<forest.length; i++){
    forest[i] = new FTree(); 
  }
}*/

void cloudyDay(){
  for(int i = 0; i<badal.length; i++){
    badal[i] = new Cloud(); 
  }
}

void setup() {

  size(800, 600);

  Tree1  = loadImage("Tree 1.png");
  Building = loadImage("Building.png");
  Clouds = loadImage("Cloud.png");
  
  S1= new Sun(350);
  //T0= new Tree();
  //B1 =new Building();

  // Birds = new Birds();
  //Tree1= new Tree1();
  //Tree2[] Trees = new Tree[5];
  snowMaker(); 
  cloudyDay();
//  afforest(); 
}


void draw () {


  ///SKY

  background(#b9cdcb); // Light Blue Sky
  
  //Bird 
  




  //Moving Sun 
  pushMatrix();
  S1.draw();
 // S1.ascend();
  popMatrix();



  // Cloud Size - 438x248 pixels

  //imageMode(CORNER);
  // Clouds Display
  Clouds.resize(219, 119);
  for(int i = 0; i<badal.length; i++){
    badal[i].show(); 
  }
 

  //Factral Tree 
 


  

  //image(images[Clouds], 0, 0);
  
 
  //Building Stagnat
  pushMatrix();
  imageMode(CENTER);
  image(Building, 400, 400);
  Building.resize(650, 350); //Resizing The pixels of the Building .png
  popMatrix();

//Snow
  for(int i = 0; i<Snows.length; i++){
    Snows[i].falling(); 
    Snows[i].show(); 
  }
 

  // Ground Box Orange
  pushMatrix();
  stroke(1);
  strokeWeight(2);
  fill(#f9a985);
  rect(0, 560, width, height);
  tint(250);
  popMatrix();
  
  Bird birdman = new Bird(); 
  birdman.draw();
  T.input(110);
  
  /*for(int i = 0 ; i<forest.length; i++){
    forest[i].draw(); 
  }*/
  
}



//pushMatrix();
////IMAGE TREE 2
//imageMode(
//image(Tree, -200, -100);
//Tree.resize(118, 172);
//popMatrix();
