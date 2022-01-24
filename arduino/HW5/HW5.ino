int pins[] = {2, 3, 4, 5};
int value[]={0, 63, 127, 191};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for (int i = 0; i < 4; i++) {
    pinMode(pins[i], OUTPUT);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

  for(int i=0; i<4; i++){
    value[i] += 15;
    if(value[i]>255) value[i]=0;
    analogWrite(pins[i], value[i]);
    Serial.print(value[i]);
    Serial.print(" ");
  }
  Serial.println();

  delay(250);
}
