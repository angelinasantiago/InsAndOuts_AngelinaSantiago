/*
NAME: Angelina Santiago
TITLE: Midterm Assignment
INSTRUCTIONS:
First = rows move automatically when sketch is intially opened
Second = When clicking your mouse the circles turn black and border turn a singular color
Third = When you hold down mouse the colors of the border randomly sporadically change colors
*/

/* 
VISUALIZATION 1 = Rows moving vertically and horizontally
VISUALIZATION 2 = Fill of the circles changes colors
VISUALIZATION 3 = Borders change color when mouse pressed 
*/


//MOVEMENT
int timer = 900;
int currentTime = 0;
int previousTime = 0;
int ellipseY = 0;
int ellipseX = 0;

int ellipseY1 = 500;
int ellipseX1 = 500;


//COLOR CHANGE
float r = 100;
float g = 150;
float b = 200;
float colorChange = 4;

//IMAGE

void setup() {
  size(500, 500);
  }

void draw() {
  //background(30);
  //mousePressed();
      
  //MOVEMENT
  currentTime = millis();
  background(0);
  if(currentTime - previousTime >= timer){
    ellipseX += 20;
    ellipseX1 -= 35;
    ellipseY += 20;
    ellipseY1 -= 35;
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
}




/*void mousePressed () {



}*/



//}
