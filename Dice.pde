int total = 0; 
        void setup()
  {
    size(600,700); 
      noLoop();
      noStroke(); 
      background(173, 216, 230);
  }
  void draw()
  {
background(173, 216, 230);
textSize(64);
fill(255);
text("Total: " + total,0,50);
    
for(int amogus = 0; amogus <= 500; amogus+=100){
 for(int amongus = -100; amongus <= 400; amongus +=100){
   Die amongDice = new Die(amongus,amogus); 
   amongDice.show();
 }
}
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {      
      int xPosition;
      int yPosition;
      Die(int x, int y) //constructor

      {
         xPosition = x; 
         yPosition = y;
      }
    void roll()
      {

      }
      void show()
      {
int rand = (int)(Math.random()*6 + 1);
total = total + rand; 
fill(255); 
 rect(100+xPosition,100+yPosition,100,100,20);
fill(0); 
  if(rand%2 == 0){
   if(rand >= 2){
     ellipse(125+xPosition,120+yPosition,25,25);
     ellipse(175+xPosition,180+yPosition,25,25); 
   }
   if(rand >= 4){
     ellipse(175+xPosition,120+yPosition,25,25);
     ellipse(125+xPosition,180+yPosition,25,25); 
   }
   if(rand >=6){
    ellipse(125+xPosition,150+yPosition,25,25); 
    ellipse(175+xPosition,150+yPosition,25,25);    
   }
  }else{
   
   if(rand >=1){
    ellipse(150+xPosition,150+yPosition,25,25);
   } 
   if(rand >=3){
    ellipse(125+xPosition,120+yPosition,25,25);
    ellipse(175+xPosition,180+yPosition,25,25); 
   }
   if(rand >=5){
     ellipse(175+xPosition,120+yPosition,25,25);
     ellipse(125+xPosition,180+yPosition,25,25); 
   }
}
        
      }
  }
