int Enable1 = 38;
int PWM1 = 9;
int DIR1 = 39;
int pwm_value[] = {0, 127, 255};
int count = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(Enable1, OUTPUT);
  pinMode(PWM1, OUTPUT);
  pinMode(DIR1, OUTPUT);

  digitalWrite(Enable1, HIGH);
  
  pinMode(14, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(14)){
     
    analogWrite(PWM1, pwm_value[count]);
    count = (count + 1) % 3;
  }

  delay(500);
  
}
