int trigPin = 3;
int echoPin = 2;

void setup() {
  Serial.begin(9600);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
}

void loop() {
  digitalWrite(trigPin, HIGH);
  delay(10);
  digitalWrite(trigPin, LOW);
   // Reads the echoPin, returns the sound wave travel time in microseconds
  float duration = pulseIn(echoPin, HIGH);
  
  float distance = duration * 340 / 10000 / 2;  
  Serial.println(String("Distance(cm): ") + distance);
  
  delay(500);
}
