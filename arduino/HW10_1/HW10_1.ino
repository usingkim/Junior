#include <SoftwareSerial.h>
SoftwareSerial mySerial(4, 5);

void setup() {
  mySerial.begin(9600);
  Serial.begin(9600); 
}

void loop() {
  // put your main code here, to run repeatedly:
  int reading = analogRead(55);
  float voltage = reading * 5.0 / 1024.0;
  float temp = voltage * 100;

  mySerial.print(String(temp, 2) + '\n');

  Serial.print(voltage);
  Serial.print(" V : ");  
  Serial.println(temp);
  delay(1000);
}
