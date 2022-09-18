//NAME: Angelina Santiago
//TITLE: RANDOM RECTANGLES
/*INSTRUCTIONS: 
Press your mess and watch the rectangles change color and speed!
See what cool colors combinations and patterns can be made.
*/

/* 
OBJECTIVEs:
Rectangle has to move
Background has to change color
Rectangle has to change color
Boundaries need to be established for movement
*/

float x, x1, y, y1, xMove, yMove; 

float back_r = random(235);
float back_g = random(235);
float back_b = random(235);

//SQUARE 1
float r = 240;
float g = 240;
float b = 240;

//SQUARE 2
float r1 = 220;
float g1 = 220;
float b1 = 220;

void setup() {
  size(500, 500); //size of the canvas
  //will set rectangle at the center of the canvas
  
  //background(0); // changes background color to black
  
  background(back_r, back_g, back_b);
  
  //starts at the center
  x = width/2;
  y = height/2;
  
  x1 = width/4;
  y1 = height/4;
  
}

void draw() {
  rectMode(CENTER);
  
  //background(back_r, back_g, back_b);
  
  fill(r, g, b); //establishes color value limits for R, G, B (0-240)
  rect(x, y, 100, 100);
  
  fill(r1, g1, b1);
  rect(x1, y1, 50, 50);
  
  x = x + xMove; //x moves by an increment of xMove (when mouse is pressed)
  y = y + yMove; //y moves by an increment of yMove (when mouse is pressed)

  x1 = x1 + xMove; //x moves by an increment of xMove (when mouse is pressed)
  y1 = y1 + yMove; //y moves by an increment of yMove (when mouse is pressed)
  
  //if x and y go beyond bounds of canvas, it moves in the opposite direction
  //FIRST SQUARE
  if (x > width || x < 2) {
    xMove = -xMove;
  }
  
  if (y > height || y < 2) {
    yMove = -yMove;
  }
  
  //SECOND SQUARE
  if (x1 > width || x1 < 4) {
    xMove = -xMove;
  }
  
  if (y1 > height || y1 < 4) {
    yMove = -yMove;
  }  
  
}

  void mousePressed() {
    xMove = random (-30, 30); //adjusts horizontal speed limit (min and max)
    yMove = random (-30, 30); // adjusts vertical speed limit (min and max)
   
    //background(random (240)); //alternates between background colors from 0-240
  
  /*//BACKGROUND (not used anymore)  
  back_r = random(235);
  back_g = random(235);
  back_b = random(235);
  */
  
 //SQUARE 1
    r = random(240); // selects a random color value within 240 when mouse is pressed
    g = random(240);
    b = random(240);
 //SQUARE 2
    r1 = random(220);
    g1 = random(220);
    b1 = random(220);
  }
