#include <Wire.h>

#define SLAVE 4

void setup() {

  // I2C 통신을 위한 Wire 라이브러리 초기화, 마스터로 참여하는 경우 주소 불필요
  Wire.begin();
  Serial.begin(9600);
}
void loop() {
  i2c_communication();
  delay(1000);//1초 대기 
}

void i2c_communication() {    // 슬레이브로 데이터 전송
  int reading = analogRead(A0);

  Wire.beginTransmission(SLAVE);  // 전송 시작
  Wire.write(reading >> 8);    // 버퍼에 쓰기
  Wire.write(reading & 0xFF);
  Wire.endTransmission(SLAVE);    // 실제 데이터 전송

  Serial.print("I send");
  Serial.println(reading);    // 송신 데이터 출력
}
