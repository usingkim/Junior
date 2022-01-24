int button[] = {14, 15, 16, 17};
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for(int i=0; i<4; i++){
    pinMode(button[i], INPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=0; i<4; i++){
    Serial.print(digitalRead(button[i]));
    Serial.print(" ");
  }
  Serial.println();
  delay(1000);
}
