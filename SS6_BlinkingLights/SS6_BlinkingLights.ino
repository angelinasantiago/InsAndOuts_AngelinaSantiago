const int buttonPin = 3;
const int LED4= 12; 
const int LED3= 13; 
const int LED2= 8;
const int LED1= 7;

int LEDState = HIGH; // tracks current state of LED pin
int buttonState = HIGH; // tracks current reading of button pin
int lastButtonState = HIGH; // tracks previous reading of button pin

// the setup function runs once at start up
void setup() {
  pinMode(buttonPin, INPUT); // initialize pushbutton pin as an input.
  pinMode(LED1, OUTPUT); // initialize pin as an output.
  pinMode(LED2, OUTPUT); 
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);   
}

// the loop 
void loop() {
buttonState = digitalRead(buttonPin); //reads pushbutton value
delay(10);

//conditional statement
if (buttonState == HIGH){
digitalWrite (LED1, LOW); //sends voltage to LED pin
delay(100);
digitalWrite (LED1, HIGH);
delay(100);
digitalWrite (LED2, LOW);
delay(100);
digitalWrite (LED2, HIGH);
delay(100);
digitalWrite (LED3, LOW);
delay(100);
digitalWrite (LED3, HIGH);
delay(100);
digitalWrite (LED4, LOW);
delay(100);
digitalWrite (LED4, HIGH);
delay(100);
  
}
else {
digitalWrite (LED1, LOW); //turn off voltage to LED pin
delay(5000);
digitalWrite (LED1, LOW);
delay(5000);
digitalWrite (LED2, LOW);
delay(5000);
digitalWrite (LED2, LOW);
delay(5000);
digitalWrite (LED3, LOW);
delay(5000);
digitalWrite (LED3, LOW);
delay(5000);
digitalWrite (LED4, LOW);
delay(5000);
digitalWrite (LED4, LOW);
delay(5000);
}



  
 /* digitalWrite(LED1, HIGH);  
  delay(1000);               
  digitalWrite(LED1, LOW);    
  delay(1000);              
  digitalWrite(LED2, HIGH);   
  delay(2000);               
  digitalWrite(LED2, LOW);    
  delay(2000);        
  digitalWrite(LED3, HIGH);   
  delay(1000);               
  digitalWrite(LED3, LOW);    
  delay(1000);    
  digitalWrite(LED4, HIGH);   
  delay(2000);               
  digitalWrite(LED4, LOW);    
  delay(2000);         

  buttonState = digitalRead(buttonPin);
  delay (10); 

  //conditional statement
  if (buttonState == HIGH && lastButtonState == LOW) {
    LEDState = !LEDState; 
  } else { 
  }

  lastButtonState = buttonState;

  // conditional statement for writing to LED pin
  if (LEDState == 1) { 
    digitalWrite (LED1, HIGH);  
  } else { //otherwise
    digitalWrite (LED1, LOW);  
  }

    if (LEDState == 1) { 
    digitalWrite (LED2, HIGH);
  } else {
    digitalWrite (LED2, LOW);
  }

    if (LEDState == 1) { 
    digitalWrite (LED3, HIGH);  
  } else {
    digitalWrite (LED3, LOW); 
  }

    if (LEDState == 1) {
    digitalWrite (LED4, HIGH); 
  } else { //otherwise
    digitalWrite (LED4, LOW);
  }*/
}
