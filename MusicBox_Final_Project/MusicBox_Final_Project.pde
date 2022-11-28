

void setup() {
background(0);
//size(500, 500);
size(400,400,P3D); //MAKES THE CANVAS 3D
}

void draw() {
//CODE SOURCE FROM https://processing.org/reference/box_.html
//BOX
fill(58, 29, 0); //BROWN COLOR
translate(232, 192, 0); 
rotateY(0.9);
rotateX(0);
fill(58, 29, 0); //BROWN COLOR
box(200, 100, 200);

//LID BOX
translate(10, -100, 0); 
rotateY(0.11);
rotateX(0);
fill(58, 29, 0); //BROWN COLOR
box(160, 20, 200);
//translate(232, 200, 0); 
//rotateY(-.11);
//rotateX(-0.2);
//noFill();


}
