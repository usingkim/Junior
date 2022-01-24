int pin_LED = 3; // LED 연결 핀
unsigned long time_previous, time_current;
unsigned long interval = 1000; // 점멸 간격
boolean LED_state = false; // LED 상태

void setup() {
  pinMode(A0, INPUT);
  pinMode(pin_LED, OUTPUT);
  digitalWrite(pin_LED, LED_state);
  Serial.begin(9600);
  time_previous = millis(); // 현재 시간
}

void loop() {
  time_current = millis();
  if (time_current - time_previous >= interval) {
    Serial.print("Current interval is ");
    Serial.print(interval);
    Serial.println(" ms.");
    time_previous = time_current; // 시작 시간 갱신
    LED_state = !LED_state; // LED 반전
    digitalWrite(pin_LED, LED_state);
  }
  int adc = analogRead(A0); // 가변저항 읽기
  interval = map(adc, 0, 1023, 500, 1500); // 점멸 간격으로 변환

  //입력된 값이 0에서부터 10을 가지는 경우, 1 ~ 100
  // 1 -> 10, 2 -> 20 ,,, 10 -> 100
  // 위의 식에서 0인 경우는 500 1023인 경우 1500
}
