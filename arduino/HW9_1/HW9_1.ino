#include <Servo.h>
Servo myServo;
int servoPin = 11, angle = 90;
boolean direction = true;

void setup() {
  myServo.attach(servoPin); // 서보 모터 연결
  pinMode(14, INPUT);
  pinMode(15, INPUT);
  Serial.begin(9600);
}
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(14)){
    angle = angle + 10;
    if(angle > 180) angle = 180;
  }

  if(digitalRead(15)){
    angle = angle - 10;
    if(angle<0) angle = 0;
  }

  myServo.write(angle);
  Serial.println(angle);
  
  delay(500);
}
