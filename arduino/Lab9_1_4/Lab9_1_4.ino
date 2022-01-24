#include <Servo.h>
Servo myServo;
int servoPin = 11;
void setup() {
  myServo.attach(servoPin); // 서보 모터 연결
}
void loop() {
  int value = analogRead(A0); // 가변저항 값 읽기
// 가변저항 값을 각도 값으로 변환
  int angle = map(value, 0, 1023, 0, 180);
  myServo.write(angle);
}
