int pin_button = 14; // 버튼 연결 핀
int pin_LED1 = 13, pin_LED2 = 2; // LED 연결 핀
unsigned long time_previous, time_current;
boolean LED_state1 = false; // LED 상태
boolean LED_state2 = false;

void setup() {
  pinMode(pin_button, INPUT);
  pinMode(pin_LED1, OUTPUT);
  digitalWrite(pin_LED1, LED_state1);
  pinMode(pin_LED2, OUTPUT);
  digitalWrite(pin_LED2, LED_state2);
  time_previous = millis(); // 현재 시간
}

void loop() {
 time_current = millis();
 if (time_current - time_previous >= 1000) {
  time_previous = time_current; // 시작 시간 갱신
  LED_state1 = !LED_state1; // LED 반전
  digitalWrite(pin_LED1, LED_state1);
 }

 if (digitalRead(pin_button)) { // 버튼이 눌러진 경우
  LED_state2 = !LED_state2; // 2번 LED 반전
  digitalWrite(pin_LED2, LED_state2);
  delay(100); // 왜 필요할까? bouncing이라는 현상이 발생할 수 있어서 해결하기위해 debouncing을 이용
  // 단, delay를 너무 크게 주면 아까 전에 발생한 delay로 인한 문제 재발생가능 --> 주의할것!!
 }
}
