const int PIEZO = 6; 
int val = 0; //tracks value from Serial port  
int frequency = 0; 

void setup() {
  pinMode(PIEZO, OUTPUT); 
  Serial.begin (9600); //start serial communication at 9600 baud
}

void loop() {
  if (Serial.available()) { 
    val = Serial.read(); 
    delay (10);
  }
    frequency = map (val, 0, 240, 150, 1550);
    tone (PIEZO, frequency, 10);
    delay (1);   
}

/* PIEZO SONG
 value = analogRead (sensor); //Reads sensor pin & assigns to value
  delay (10);  //Small delay
  value = value / 4; //Divides value by 4 reduces range to max 255

  if (value > 0 && value <= 200) {
      valuePot = analogRead(sensor); 
  delay(10);
  valuePot = valuePot/4;

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
*/
