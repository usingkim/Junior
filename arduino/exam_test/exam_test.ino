void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.println(String(5.12365, 3));
  float f = 3.141592;
  Serial.println(f);
  Serial.println(String(f));
  while(1);
}
