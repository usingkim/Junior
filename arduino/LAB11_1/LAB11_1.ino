int motionPin = 8;

void setup() {
  Serial.begin(9600);
  pinMode(motionPin, INPUT);
}
 
void loop() {
  int motion = digitalRead(motionPin);
  
  if(motion == 1) {
    Serial.println("Motion detected");
  }

  delay(500);
}
