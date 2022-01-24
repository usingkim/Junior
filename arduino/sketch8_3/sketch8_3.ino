int pin_LED = 13; // LED 연결 핀
boolean LED_state = false; // LED 상태
unsigned long time_previous, time_current;
unsigned long count = 0; // loop 함수 실행 횟수

void setup() {
  pinMode(pin_LED, OUTPUT);
  digitalWrite(pin_LED, LED_state);
  Serial.begin(9600);
  time_previous = millis(); // 시작 시간
}

void loop() {
  time_current = millis(); // 현재 시간
  count++; // loop 함수 실행 횟수
  // 1초 이상 시간이 경과한 경우
  if (time_current - time_previous >= 1000) {
    time_previous = time_current; // 시작 시간 갱신
    LED_state = !LED_state; // LED 반전
    digitalWrite(pin_LED, LED_state);
    Serial.println(count); // 1초 동안 loop 함수가 실행된 횟수 출력
    count = 0;
  }
}
