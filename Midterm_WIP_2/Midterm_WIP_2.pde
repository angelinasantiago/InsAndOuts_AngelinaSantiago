/*
NAME: Angelina Santiago
TITLE: Midterm Assignment
INSTRUCTIONS:
First = rows move automatically when sketch is intially opened
Second = When clicking your mouse the circles turn black and border turn a singular color
Third = When you hold down mouse the colors of the border randomly sporadically change colors
*/

/* FIRST WIP ADDITIONS
VISUALIZATION 1 = Rows moving vertically and horizontally - DONE
VISUALIZATION 2 = Fill of the circles changes colors - DONE
VISUALIZATION 3 = Borders change color when mouse pressed - DONE
*/


/* SECOND WIP ADDITIONS
Put boundaries in - IN PROGRESS (implemented but need adjusting in final iteration)
Add Images / more stages - IN PROGRESS (looking for images that will fit the theme for the project)
Add mouse movement to MousePressed - DONE
Have rows/shapes follow mouse (?) - DONE (implemented into MousePressed)
*/


//MOVEMENT
int timer = 900;
int currentTime = 0;
int previousTime = 0;

int ellipseY = 60;
int ellipseX = 50;

int ellipseY1 = 500;
int ellipseX1 = 450;


//COLOR CHANGE
float r = 100;
float g = 150;
float b = 200;
float colorChange = 4;

//BORDERS
int ellipseXMove = 35;
int ellipseX1Move = -35;

int ellipseYMove = 35;
int ellipseY1Move = -35;


//IMAGE

void setup() {
  size(500, 500);
  
  //MOUSE MOVEMENT
  frameRate(5);
  
  }

void draw() {
  //background(30);
  //mousePressed();
      
  //MOVEMENT
  currentTime = millis();
  background(0);
  if(currentTime - previousTime >= timer){
    ellipseX += ellipseXMove;
    ellipseX1 += ellipseX1Move;
    ellipseY += ellipseYMove;
    ellipseY1 += ellipseY1Move;
    
    fill(random(210), random(230), random(250));
    //fill(r, g, b);
    stroke(0);
    strokeWeight(4);
    previousTime = currentTime;
  }
  
  //BORDER COLOR CHANGE
  if (mousePressed){
    stroke(random(210), random(230), random(250));
    strokeWeight(4);
    fill(0);
    
  //MOUSE MOVEMENT
  // WHEN MOUSE PRESSED CIRCLES APPEAR THAT CHANGE IN SHAPE AND SIZE AS YOU MOVE THEM AROUND THE CANVAS
  ellipseMode(CENTER);
  ellipse(0, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(500, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, pmouseX, pmouseY);
  }
    
    /*r += colorChange;
    if (r + colorChange > 255 || r + colorChange < 0) {
        colorChange = -colorChange;
      }*/
    
     /* if(mousePressed) {
      r += colorChange;
      if (r + colorChange > 255 || r + colorChange < 0) {
        colorChange = -colorChange;
      }*/
  
  //HORIZONTAL MOVEMENT LEFT
   ellipse(ellipseX, height/1, 100, 100);
   ellipse(ellipseX, height/1.33, 100, 100);
   ellipse(ellipseX, height/2, 100, 100);
   ellipse(ellipseX, height/4, 100, 100);
   ellipse(ellipseX, height/45, 100, 100);
  
  //HORIZONTAL MOVEMENT RIGHT
   ellipse(ellipseX1, height/1, 100, 100);
   ellipse(ellipseX1, height/1.33, 100, 100);
   ellipse(ellipseX1, height/2, 100, 100);
   ellipse(ellipseX1, height/4, 100, 100);
   ellipse(ellipseX1, height/45, 100, 100);
  
  //VERTICAL MOVEMENT TOP
  ellipse(width/1, ellipseY, 100, 100);
  ellipse(width/1.33, ellipseY, 100, 100);
  ellipse(width/2, ellipseY, 100, 100);
  ellipse(width/4, ellipseY, 100, 100);
  ellipse(width/45, ellipseY, 100, 100);
  
  //VERTICAL MOVEMENT BOTTOM
  ellipse(width/1, ellipseY1, 100, 100);
  ellipse(width/1.33, ellipseY1, 100, 100);
  ellipse(width/2, ellipseY1, 100, 100);
  ellipse(width/4, ellipseY1, 100, 100);
  ellipse(width/45, ellipseY1, 100, 100);
  
  //CANVAS BORDERS
  if (ellipseX > width - 50 || ellipseX < 2) {
    ellipseXMove = - ellipseXMove;
  }
  
  if (ellipseY > height || ellipseY < 2) {
    ellipseYMove = - ellipseYMove;    
  
  }

    if (ellipseX1 > width - 50 || ellipseX1 < 2) {
    ellipseX1Move = - ellipseX1Move;
  }
  
  if (ellipseY1 > height || ellipseY1 < 2) {
    ellipseY1Move = - ellipseY1Move;    
  
  }
  
  
}


/*void mousePressed () {
  


}*/



//}
