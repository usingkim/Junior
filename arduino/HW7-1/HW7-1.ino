int pins_LED[] = {2,3,4,5};
int gap = 250;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  for(int i=0;i<4;i++){
    pinMode(pins_LED[i], OUTPUT);
    digitalWrite(pins_LED[i], LOW);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  int reading = analogRead(56);

  Serial.println(reading);

  for(int i=0;i<4;i++){
    if(gap*i+150<=reading){
      digitalWrite(pins_LED[i], HIGH);
    }
    else{
      digitalWrite(pins_LED[i], LOW);
    }
  }

  delay(1000);
}
