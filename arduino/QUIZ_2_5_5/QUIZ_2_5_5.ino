int nloop = 3;
void setup() {
  Serial.begin(9600);
}

void loop() {
  while (nloop > 0) {
    Serial.println("Hello World");
    nloop = nloop - 1;
  }
}
