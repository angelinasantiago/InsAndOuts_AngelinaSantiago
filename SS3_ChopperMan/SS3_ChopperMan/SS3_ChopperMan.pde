 /*
 NAME: Angelina Santiago
 TTTLE: CHOPPER-MAN
 INSTRUCTIONS: 
 Hold down your mouse button in order to see Chopper-Man drop down and save the day!
 */
PImage chopperman;

float opacity = 0;
//float opacity_r = 255;
//float opacity_g = 255;
//float opacity_b = 255;

float fade = 1;
//float fade_r = 255;
//float fade_g = 255;
//float fade_b = 255;

float fall = 0;
String phrase = "CHOPPER-MAN here to save the day!";


 void setup() {
   size(500, 500);
   background(25);   
   
   //IMAGE
   imageMode(CENTER); //centers the image
   
   //TEXT
   textAlign(CENTER); //centers the text
   textSize(50); //size of text
   chopperman = loadImage("chopperman.png"); //assigns the image to an object 
 }
 
 void draw() {
   background(25);
   //TEXT
   //fill(opacity_r, opacity_g, opacity_b);
   //opacity_r = opacity_r + fade_r;
   //opacity_g = opacity_g + fade_g;
   //opacity_b = opacity_b + fade_b;
   
   //TEXT
   fill(opacity);
   opacity = opacity + fade;
   text("CHOPPER-MAN!", width/2, height/2 - 50);
 
   image(chopperman, width/2, height/2); //x and y coordinates of the image
 
 if (mousePressed){
   background(25);
   image(chopperman, width/2, fall);
   
   if (fall < height/2) {
     fall++;
   } 
   else {
     textSize(30);
     text(phrase, width/2, height/2 - 50);
   } 
 }
   else {
     fall = 0;
   }
   
 }
 //}
