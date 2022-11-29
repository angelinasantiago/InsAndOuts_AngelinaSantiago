//LID MOVEMENT
int rotateVal = 0;
int inc = 1;

//SIZE VARIABLES
int boxLength = 200;
int boxWidth = 200;

//DIRECTIONAL LIGHT
float dirX;
float dirY;

void setup() {
background(0);
//size(500, 500);
size(600, 600, P3D); //MAKES THE CANVAS 3D
}

void draw() {
background(50);

//TABLE
fill(255);
ellipse(400, 600, 600, 600);


//CODE SOURCE FROM: https://p5js.org/reference/#/p5/directionalLight
dirX = (mouseX / width - 0.8) * 2;
dirY = (mouseY / height - 0.8) * 2;
directionalLight(300, 300, 300, - dirX, - dirY, -1);
noStroke();

//CODE SOURCE FROM https://processing.org/reference/box_.html
//BOX
fill(58, 29, 0); //BROWN COLOR
translate(305, 305, 0); //length, height, width
rotateY(0.9);
rotateX(0);
fill(58, 29, 0); //BROWN COLOR
box(boxLength, 100, boxWidth);

//LID BOX
float transRotateY = -boxWidth/2 * sin(radians(rotateVal));
float transRotateX = -boxLength/2 * cos(radians(rotateVal)) + boxLength/2;

translate(0, -60, 0);
translate(transRotateX, transRotateY, 0); //length, height, width (?)
rotateZ(radians(rotateVal));
delay(10);
rotateVal+=inc;
if(rotateVal>90 || rotateVal <=0){
  inc = -inc;
}
//rotateY(0.11);
fill(58, 29, 0); //BROWN COLOR
box(boxLength, 20, boxWidth); // length , height , width (?)
}
