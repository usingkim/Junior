#include <Servo.h>

Servo myServo;
int servoPin = 11;
void setup() {
myServo.attach(servoPin); // 서보 모터 연결
}
void loop() {
int angle; // 축 제어 값
for (angle = 0; angle < 180; angle++) { // 0도에서 180도로
myServo.write(angle);
delay(5);
}
for (angle = 180; angle > 0; angle--) { // 180도에서 0도로
myServo.write(angle);
delay(5);
}
}
