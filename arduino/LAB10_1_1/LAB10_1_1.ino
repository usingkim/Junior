#include <SoftwareSerial.h>
//SoftwareSerial(RX,TX) 형식으로 메가2560(2번)의 핀과 교차하여 연결한다.
SoftwareSerial mySerial(4, 5);
int button_pin = 2;
boolean previous_state = false;

void setup() {
  mySerial.begin(9600);     // 메가2560(2번)과의 시리얼 연결
  Serial.begin(9600);   // 컴퓨터와의 시리얼 연결
  pinMode(button_pin, INPUT);
}

void loop() {
  boolean state = digitalRead(button_pin);
  if (state) {
    // 눌러지지 않은 상태에서 눌러진 경우로 상태가 바뀐 경우
    if (previous_state == false) {
      mySerial.write('1');
      Serial.println("Button is pressed..");
    }
    previous_state = true;
    delay(20);
  }
  else {
    previous_state = false;
  }
}
