float r = 210; //r value for background rgb
float g = 220;
float b = 230;
float colorFade = 3; // for incrementing the r value

float r_shade = 220; 
float g_shade = 240;
float b_shade = 230;


  void setup() {
    size(1020, 600);
    rectMode(CENTER);
  }

  void draw () {
  background(r, g, b);

  if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 - 50 && mouseY < height/2 + 50) {
    if(mousePressed) {
      r += colorFade;
      if (r + colorFade > 255 || r + colorFade < 0) {
        colorFade = -colorFade;
      }
        for (int y = 30; y < height; y += 60) {
          for (int x = 30; x < width; x += 60) { 
            for (int d = 60; d > 0; d = -20) {
              fill(75, 80, 100);
              strokeWeight(0);
              //ellipse(x, y, d, d);
               rect(x, y, 10, 10);
            
               stroke(b, g, r);
              strokeWeight(3);
               triangle(x, y, 10, 10, 10, 20);
       }
      }
     }
      //println(r);
    }
  }

  rectMode(CENTER);
  strokeWeight(0);
  fill (g, r, b);
  
  rect(width/2, height/2, 300, 310);
  rect(width/6.8, height/4, 300, 310);
  rect(width/1.172, height/1.33, 300, 310);

  }
