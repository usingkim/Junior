#include <Wire.h>

#define SLAVE 4

void setup() {

  //Wire 라이브러리 초기화, 슬레이브로 참여하기 위해서는 주소를 지정해야 한다.
  Wire.begin(SLAVE);

  //마스터의 데이터를 수신했을 때 처리할 함수 등록
  Wire.onReceive(receiveFromMaster);

  Serial.begin(9600);
}
void loop() {
}
void receiveFromMaster(int bytes) {

  byte r1 = Wire.read();              //2바이트 정수값 읽기
  byte r2 = Wire.read();

  int value = (r1 << 8) + r2;

  Serial.print("I got");
  Serial.println(value);
}
