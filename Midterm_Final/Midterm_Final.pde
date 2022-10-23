/*
NAME: Angelina Santiago
TITLE: Midterm Assignment
USER INSTRUCTIONS:
  > PRESS PLAY = Watch the rows move and change color.
  > MOUSE PRESS = See the ellipses turn black and outlines change color rapidly.
    - Circles will appear in background and change size and colors in unison with the rows.
  > BACKSPACE = Resets the canvas to it's original starting state.
  > ENTER = Circles change size and shape as you hold down the ENTER key and move your mouse.
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
//float[] colorchange;
float r = 100;
float g = 150;
float b = 200;

//BORDERS
int ellipseXMove = 35;
int ellipseX1Move = -35;

int ellipseYMove = 35;
int ellipseY1Move = -35;

void setup() {
  size(500, 500);
 
 //COLOR CHANGE
 /*colorchange[0] = 100;
 colorchange[1] = 150;
 colorchange[2] = 200;*/
 
  //MOUSE MOVEMENT
  frameRate(5);
  }

void draw() {
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
  /* WHEN MOUSE PRESSED CIRCLES APPEAR THAT CHANGE IN SHAPE 
  AND SIZE AS YOU MOVE THEM AROUND THE CANVAS*/
  ellipseMode(CENTER);
  
  //MIDDLE ROW
  ellipse(0, mouseY, pmouseX, pmouseY);
  ellipse(500, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, pmouseX, pmouseY);
  
  //BOTTOM ROW
  ellipse(mouseX, 500 , pmouseX, 250);
  ellipse(0, 500 , pmouseX , 250);
  ellipse(500, 500 , pmouseX, 250);
  
  //TOP ROW
  ellipse(mouseX, 0 , pmouseX, 250);
  ellipse(0, 0 , pmouseX , 250);
  ellipse(500, 0 , pmouseX, 250);
  }
  
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

void keyPressed(){
  if (keyCode == ENTER) {
  background(0);
  
   //HORIZONTAL MOVEMENT LEFT
   ellipse(ellipseX, height/1, pmouseX, pmouseY);
   ellipse(ellipseX, height/1.33, pmouseX, pmouseY);
   ellipse(ellipseX, height/2, pmouseX, pmouseY);
   ellipse(ellipseX, height/4, pmouseX, pmouseY);
   ellipse(ellipseX, height/45, pmouseX, pmouseY);
  
  //HORIZONTAL MOVEMENT RIGHT
   ellipse(ellipseX1, height/1, pmouseX, pmouseY);
   ellipse(ellipseX1, height/1.33, pmouseX, pmouseY);
   ellipse(ellipseX1, height/2, pmouseX, pmouseY);
   ellipse(ellipseX1, height/4, pmouseX, pmouseY);
   ellipse(ellipseX1, height/45, pmouseX, pmouseY);
  
  //VERTICAL MOVEMENT TOP
  ellipse(width/1, ellipseY, pmouseX, pmouseY);
  ellipse(width/1.33, ellipseY, pmouseX, pmouseY);
  ellipse(width/2, ellipseY, pmouseX, pmouseY);
  ellipse(width/4, ellipseY, pmouseX, pmouseY);
  ellipse(width/45, ellipseY, pmouseX, pmouseY);
  
  //VERTICAL MOVEMENT BOTTOM
  ellipse(width/1, ellipseY1, pmouseX, pmouseY);
  ellipse(width/1.33, ellipseY1, pmouseX, pmouseY);
  ellipse(width/2, ellipseY1, pmouseX, pmouseY);
  ellipse(width/4, ellipseY1, pmouseX, pmouseY);
  ellipse(width/45, ellipseY1, pmouseX, pmouseY);
  }
  
  //RESETS THE SKETCH BACK TO BEGINNING -- RESTART
  if (keyCode == BACKSPACE) {
    sketchReset();
  }
  
}

//RESETS THE SKETCH BACK TO BEGINNING -- RESTART
void sketchReset() {
  //HORIZONTAL MOVEMENT LEFT
  ellipseX = 50;
  
  //HORIZONTAL MOVEMENT RIGHT
  ellipseX1 = 450;
  
  //VERTICAL MOVEMENT TOP
  ellipseY = 60;
  
  //VERTICAL MOVEMENT BOTTOM
  ellipseY1 = 500;
}
