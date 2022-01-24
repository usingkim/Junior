void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  long a = Serial.parseInt();
  long b = Serial.parseInt();

  Serial.println(a+b);
  
  delay(500);
}
