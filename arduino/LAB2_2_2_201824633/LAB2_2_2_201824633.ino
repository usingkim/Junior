void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int n = 123;
  float f = 3.1415927;

  Serial.println(n, BIN);
  Serial.println(n,DEC);
  Serial.println(n, HEX);

  Serial.println();
  Serial.println(f);
  Serial.println(f, 5);

  while(true);
}
