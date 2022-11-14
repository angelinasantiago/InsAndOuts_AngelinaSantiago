import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(300, 300);
  String[] portList = Serial.list();
  printArray(portList); //prints port list to console
  String portName = Serial.list()[1]; //double check port each time
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available, -- if you don't do this, you will read a bunch of -1 values mixed in
    val = myPort.read(); // read it and store it in val
  }
  
  background(0);
  fill (50);
   /* if (val >= 255) {
      fill(255);  
      rect(width/2, height/2, val, val);
      rect(width/6, height/6, val, val);
      rect(width/3, height/3, val, val);
      rect(width/1.5, height/1.5, val, val);
    } else if (val <= 127) {
      fill(0);  
      rect(width/2, height/2, val, val);
      rect(width/6, height/6, val, val);
      rect(width/3, height/3, val, val);
      rect(width/1.5, height/1.5, val, val);
    }*/

  rect(width/2, height/2, val, val);
  rect(width/6, height/6, val, val);
  rect(width/3, height/3, val, val);
  rect(width/1.5, height/1.5, val, val);
  
  //ellipse (width/2, height/2, val, val);
  //println (val); //prints to Processing console
}
