//PIEZO
const int piezo = 2; 
//DOOR SENSOR
const int doorSensor = 4;
//ROTARY ENCODER
const int pinA = 11;
const int pinB = 10;
const long interval = 500;
long lastTime = 0;

void setup() {
  Serial.begin(9600);
  //PIEZO
  pinMode(piezo, OUTPUT);

  //ROTARY ENCODER
  pinMode(pinA, INPUT_PULLUP);
  pinMode(pinB, INPUT_PULLUP);
  }

//ROTARY ENCODER
bool checkSpinning(){
  bool spinning = false;
  long currentTime = millis();
  int aReading = digitalRead(pinA);
  int bReading = digitalRead(pinB);
  if(currentTime - lastTime > interval){
    if(aReading == LOW || bReading == LOW){
      spinning = true;
      lastTime = currentTime;
    }
    else {
      spinning = false;
    }
  }
  return spinning;
  Serial.println(spinning);
}

//DOOR SENSOR
bool checkOpen(){
  bool isOpen = false;
  digitalWrite( 4, HIGH);
  //int doorSensor = digitalWrite(true);
  
  return isOpen;
}

void loop() {
//ROTARY ENCODER
if (checkSpinning() == true && checkOpen() == true && millis() >1000) {

  tone(piezo, 27.50, 1000); 
  delay(500);
 if(!checkOpen()) break;
 
 tone(piezo, 25.96, 1000);
 delay(500);
 if(!checkOpen()) break;
   
 tone(piezo, 27.50,1000); 
 delay(500);
  if(!checkOpen()) break;
   
 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) break;
    
 tone(piezo, 46.25, 1000);
 delay(500);
  if(!checkOpen()) break;

 tone(piezo, 30.87, 1000);
 delay(500);
  if(!checkOpen()) break;
  
 tone(piezo, 3951.07, 1000);
 delay(500);
  if(!checkOpen()) break;
  
 tone(piezo, 4698.63, 1000);
 delay(500);
  if(!checkOpen()) break;
  
 tone(piezo, 3951.07, 1000);
 delay(500);
  if(!checkOpen()) break;
  
 tone(piezo, 4698.63, 1000);
 delay(500); 
  if(!checkOpen()) break;
   
 tone(piezo, 27.50, 1000);
 delay(500);
  if(!checkOpen()) break;
  
 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) break;

 tone(piezo, 27.50, 1000); 
 delay(500);
  if(!checkOpen()) break;

 tone(piezo, 4698.63, 1000);
 delay(500);
  if(!checkOpen()) break;
  
 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) break;

 tone(piezo, 27.50,1000); 
 delay(500);
  if(!checkOpen()) break;
   
 tone(piezo, 27.50,1000); 
 delay(500);
  if(!checkOpen()) break;
   
 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) break;
  }
  else{
    noTone(piezo);
  }
  delay(200);
  
  //}
  
  //delay(50);
}
