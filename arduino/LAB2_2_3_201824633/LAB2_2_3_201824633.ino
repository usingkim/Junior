void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  if(Serial.available()>0){
    byte data = Serial.read();

    Serial.print("Echo back : ");
    Serial.write(data);
    Serial.print(" ");

    Serial.println(data);
  }
}
