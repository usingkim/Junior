void setup() {
  Serial.begin(9600);
}

void loop() {
  byte data = 0x41;
  Serial.println(data);     // println()
  Serial.write(data);       // write()

  while (true);
}
