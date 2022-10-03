//NAME: Angelina Santiago
//TITLE: Monochromatic Suns
/*INSTRUCTIONS: Press your mouse button and watch the smaller sun revolve around
the other and simultaneously watch them change colors.
*/
float colorFade = 3;
int length = 3;

int[] r = {140, 230, 255};
int[] g = {16, 119, 216};
int[] b = {0, 0, 40};

int counter = 0;

int sunsetchange = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  sunrise();
  //pointX[counter] = mouseX;
  //pointY[counter] = mouseY;
  //counter++;
  strokeWeight(5);
  stroke(255, 240, 165);
  
  ellipse(width/2, height/2, 200, 200);
  //triangle(width/2, height/2, 10, 10, 10, 20);
  
  /*if(mousePressed){
  }*/
    
  /*for(int i=0; i<length-1; i++){
    //if(i+1 != counter){
      //line(pointX[i], pointY[i], pointX[i+1], pointY[i+1]);
      
      fill(r[i], g[i], b[i]);
    //}
     //noLoop(); //stops loop from running again
  }*/
  }
  
void sunrise() {
  if(counter == 0){
    ellipse(60, 250, 80 ,80);
  } else if (counter == 2) {
    ellipse(100, 100, 80 ,80);
  } else if (counter == 1) {
    ellipse(400, 100, 80, 80);
  }
}


void mousePressed() {
    fill(r[counter], g[counter], b[counter]);
    counter++;
    
    if(counter > 2) {
      counter = 0;
}
  
}
