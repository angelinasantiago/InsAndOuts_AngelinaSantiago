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
  isOpen = digitalRead(4);
  return isOpen;

  
/*  bool isOpen = false;
 //digitalWrite( 4, HIGH);
  digitalRead(4, LOW);
  //int doorSensor = digitalWrite(true);

     //return isOpen;


  if (isOpen = true) {
    digitalRead(4, HIGH);
    }
  else (isOpen = false) { 
    digitalRead(4, LOW)
    }

     return isOpen;


 /* //NEW CODE TEST
  if (isOpen = true) {
    playMusic();
    } else {
      isOpen = false;
      }*/
}

void playMusic(){
  tone(piezo, 27.50, 1000);
  delay(500);
 if(!checkOpen()) return;

 tone(piezo, 25.96, 1000);
 delay(500);
 if(!checkOpen()) return;

 tone(piezo, 27.50,1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 46.25, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 30.87, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 3951.07, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 4698.63, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 3951.07, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 4698.63, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 27.50, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 27.50, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 4698.63, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 27.50,1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 27.50,1000);
 delay(500);
  if(!checkOpen()) return;

 tone(piezo, 25.96, 1000);
 delay(500);
  if(!checkOpen()) return;
  
  delay(200);

  //}

  //delay(50);
}

void loop() {
//ROTARY ENCODER
if (checkSpinning() == true && checkOpen() == true && millis() >1000) {
  playMusic();
}
  
}
