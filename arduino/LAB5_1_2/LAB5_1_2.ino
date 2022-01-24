int vResistor = A0; // A0 핀에 가변저항 연결
int pins_LED[] = {2, 3, 4, 5}; // LED 연결 핀

void setup() {
  Serial.begin(9600); // 시리얼 통신 초기화
  pinMode(vResistor, INPUT);
  for (int i = 0; i < 4; i++) {
    pinMode(pins_LED[i], OUTPUT);
    digitalWrite(pins_LED[i], LOW);
  }
}

void loop() {
  int adc = analogRead(vResistor); // 가변저항 값 읽기
  int count_led = (adc >> 8) + 1; // LED 개수 결정
  for (int i = 0; i < 4; i++) { // LED 점멸
    if (i < count_led)
      digitalWrite(pins_LED[i], HIGH);
    else
      digitalWrite(pins_LED[i], LOW);
  }
  // ADC 값과 LED 개수 출력
  Serial.println(String("ADC : ") + adc + ", LED count : " + count_led);
  delay(1000); // 1초(1000ms) 대기
}
