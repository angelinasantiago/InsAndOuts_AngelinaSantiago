const int piezo = 2; 
//const int valuePot = A0;
const int sensor = A0;
const int button = A2;
int value = 0;
int valuePot = 0;

//TEST BOX CODE
const int buttonPin = A2;  // the number of the pushbutton pin
int buttonState = 0; 

int val = 0; //tracks value from Serial port  
int frequency = 0; 

//

//ROTARY ENCODER
//CODE SOURCE FROM: https://lastminuteengineers.com/rotary-encoder-arduino-tutorial/
#define CLK 2
#define DT 3
int counter = 0;
int currentStateCLK;
int lastStateCLK;


//MAGNETIC DOOR SENSOR
//CODE SOURCE FROM: https://create.arduino.cc/projecthub/1NextPCB/how-to-use-a-magnetic-door-sensor-1f9439
const int doorsensor = 
int sensorstate;


void setup() {
  //PIEZO
  pinMode(piezo, OUTPUT); 
  Serial.begin (9600); //start serial communication at 9600 baud
  
  //BUTTON 
  //pinMode(buttonPin, INPUT);
  
  //MAGNETIC DOOR SENSOR
  pinMode(doorsensor, INPUT_PULLUP);

//ROTARY ENCODER
//CODE SOURCE FROM: https://lastminuteengineers.com/rotary-encoder-arduino-tutorial/
  
  // Set encoder pins as inputs
  pinMode(CLK,INPUT);
  pinMode(DT,INPUT);
  
  // Setup Serial Monitor
  Serial.begin(9600);
  
  // Attach servo on pin 9 to the servo object
  servo.attach(9);
  servo.write(counter);
  
  // Read the initial state of CLK
  lastStateCLK = digitalRead(CLK);
}


  
}

void loop() {
  /*if (Serial.available()) { 
    val = Serial.read(); 
    delay (10);
  }
    frequency = map (val, 0, 240, 150, 1550);
    tone (PIEZO, frequency, 10);
    delay (1);  
 
}*/

//BOX TEST CODE
//if (buttonPin = )
buttonState = digitalRead(buttonPin);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    //digitalWrite(piezo, HIGH);
tone(piezo, 27.50, 1000); 
delay(500);
tone(piezo, 25.96, 1000);
delay(500);
  } else {
    //digitalWrite(piezo, LOW);
  noTone(0);
    }


//ROTARY ENCODER
//CODE SOURCE FROM: https://lastminuteengineers.com/rotary-encoder-arduino-tutorial/
  // Read the current state of CLK
  currentStateCLK = digitalRead(CLK);
  
  // If last and current state of CLK are different, then pulse occurred
  // React to only 1 state change to avoid double count
  if (currentStateCLK != lastStateCLK  && currentStateCLK == 1){
    
    // If the DT state is different than the CLK state then
    // the encoder is rotating CCW so decrement
    if (digitalRead(DT) != currentStateCLK) {
      counter --;
      if (counter<0)
        counter=0;
    } else {
      // Encoder is rotating CW so increment
      counter ++;
      if (counter>179)
        counter=179;
    }

  }
  // Remember last CLK state
  //lastStateCLK = currentStateCLK;
  

//MAGNETIC DOOR SENSOR
//CODE SOURCE FROM: https://create.arduino.cc/projecthub/1NextPCB/how-to-use-a-magnetic-door-sensor-
  /*sensorstate = digitalRead(sensor);
  
  if (sensorstate == HIGH){
    tone(piezo, 400);
  }
  else{
    noTone(piezo);
  }
  delay(200);*/

  sensorstate = digitalRead(sensor);
  
  if (sensorstate == HIGH){
    //tone(piezo, 400);
     value = analogRead (sensor); //Reads sensor pin & assigns to value
  delay (10);  //Small delay
  value = value / 4; //Divides value by 4 reduces range to max 255

  if(value >=100){
 tone(piezo, 27.50, 1000); 
 delay(500);
  
 tone(piezo, 25.96, 1000);
 delay(500);
   
 tone(piezo, 27.50,1000); 
 delay(500);
   
 tone(piezo, 25.96, 1000);
 delay(500);
    
 tone(piezo, 46.25, 1000);
 delay(500);

 tone(piezo, 30.87, 1000);
 delay(500);
  
 tone(piezo, 3951.07, 1000);
 delay(500);
  
 tone(piezo, 4698.63, 1000);
 delay(500);
  
 tone(piezo, 3951.07, 1000);
 delay(500);
  
 tone(piezo, 4698.63, 1000);
 delay(500); 
   
 tone(piezo, 27.50, 1000);
 delay(500);
  
 tone(piezo, 25.96, 1000);
 delay(500);

 tone(piezo, 27.50, 1000); 
 delay(500);

 tone(piezo, 4698.63, 1000);
 delay(500);
  
 tone(piezo, 25.96, 1000);
 delay(500);

 tone(piezo, 27.50,1000); 
 delay(500);
   
 tone(piezo, 27.50,1000); 
 delay(500);
   
 tone(piezo, 25.96, 1000);
 delay(500);
  }
  }
  else{
    noTone(piezo);
  }
  delay(200);




//PIEZO CODE / SONG
/* value = analogRead (sensor); //Reads sensor pin & assigns to value
  delay (10);  //Small delay
  value = value / 4; //Divides value by 4 reduces range to max 255

  if(value >=100){
 tone(piezo, 27.50, 1000); 
 delay(500);
  
 tone(piezo, 25.96, 1000);
 delay(500);
   
 tone(piezo, 27.50,1000); 
 delay(500);
   
 tone(piezo, 25.96, 1000);
 delay(500);
    
 tone(piezo, 46.25, 1000);
 delay(500);

 tone(piezo, 30.87, 1000);
 delay(500);
  
 tone(piezo, 3951.07, 1000);
 delay(500);
  
 tone(piezo, 4698.63, 1000);
 delay(500);
  
 tone(piezo, 3951.07, 1000);
 delay(500);
  
 tone(piezo, 4698.63, 1000);
 delay(500); 
   
 tone(piezo, 27.50, 1000);
 delay(500);
  
 tone(piezo, 25.96, 1000);
 delay(500);

 tone(piezo, 27.50, 1000); 
 delay(500);

 tone(piezo, 4698.63, 1000);
 delay(500);
  
 tone(piezo, 25.96, 1000);
 delay(500);

 tone(piezo, 27.50,1000); 
 delay(500);
   
 tone(piezo, 27.50,1000); 
 delay(500);
   
 tone(piezo, 25.96, 1000);
 delay(500);
  }*/

 
 
/*} else {
  
  tone(piezo 0, 1000);*/
  
 }
//*/
