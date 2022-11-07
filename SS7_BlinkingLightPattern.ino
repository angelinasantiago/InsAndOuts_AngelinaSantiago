const int buttonPin = 2;
const int LED1 = 11;
const int LED2 = 10;
const int LED3 = 9;
const int LED4 = 6;


int buttonState = HIGH;
int LEDState = 0;
//NEW CODE
//int LEDState2 = 0;
//int LEDState3 = 0;
//int LEDState4 = 0;
int lastButtonState = HIGH;

unsigned long previousMillis = 0;
const unsigned long interval = 3000;
const unsigned long interval2 = 600;
bool blinkState = false;

void setup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP);
}

void loop() {

unsigned long currentMillis = millis();

buttonState = digitalRead(buttonPin);
delay(10);

  if (buttonState == LOW && lastButtonState == HIGH) {
    //digitalWrite(LED, HIGH);
  //LEDState = !LEDState;

  LEDState++;
  if(LEDState > 2) {
    LEDState = 0;
    }
    
  } else {
    //digitalWrite(LED, LOW);

  }
    lastButtonState = buttonState;

  if (LEDState == 1) {
    if(currentMillis - previousMillis >= interval) {
      previousMillis = currentMillis;

      if (blinkState == true) {
        digitalWrite(LED1, LOW);
        delay(500);
        digitalWrite(LED2, LOW);
        delay(500);
        digitalWrite(LED3, LOW);
        delay(500);
        digitalWrite(LED4, LOW);
        delay(500);
        } else {
        digitalWrite(LED1, HIGH);
        delay(300);
        digitalWrite(LED2, HIGH);
        delay(300);
        digitalWrite(LED3, HIGH);
        delay(300);
        digitalWrite(LED4, HIGH);
        delay(300);
        }
          blinkState = !blinkState;
      } else if (LEDState == 2) {
    if(currentMillis - previousMillis >= interval2) {
      previousMillis = currentMillis;

      if (blinkState == true) {
        digitalWrite(LED1, LOW);
        digitalWrite(LED2, LOW);
        digitalWrite(LED3, LOW);
        digitalWrite(LED4, LOW);
        } else {
        digitalWrite(LED1, HIGH);
        digitalWrite(LED2, HIGH);
        digitalWrite(LED3, HIGH);
        digitalWrite(LED4, HIGH);
        }
          blinkState = !blinkState;
      }
        }     
    } else {
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
      digitalWrite(LED3, LOW);
      digitalWrite(LED4, LOW);
      blinkState = false;
      }
  } //ending bracket for loop
  
//}
