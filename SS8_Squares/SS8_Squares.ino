
const int LED = 11;
const int SENSOR = A0; 
int val = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode (LED, OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  val = analogRead(SENSOR);
  val = val / 4; 
  delay(10); 
  
  Serial.println(val); //to send human-readable data to Arduino monitor
  //Serial.write(val);  //to send binary data to Processing
}
