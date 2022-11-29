//LID MOVEMENT
int rotateVal = 0;
int inc = 1;

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
box(200, 100, 200);


//LID BOX
float transRotateX = map(rotateVal, 0, 90, 0, 90);
float transRotateY = map(rotateVal, 0, 90, 0, 90);
translate(transRotateX, -60-transRotateY, 0); //length, height, width (?)
rotateZ(radians(rotateVal));
delay(10);
rotateVal += inc;
if(rotateVal > 90 || rotateVal <= 0){
  inc = -inc;
}
//rotateY(0.11);
fill(58, 29, 0); //BROWN COLOR
box(200, 20, 200); // length , height , width (?)

//CODE SOURCE FROM: https://p5js.org/reference/#/p5/cylinder
 //cylinder(20, 75, 16, 16, 80, 80);
//cylinder(100, 85, 24, 16);
}
