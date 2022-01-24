int pins_LED[] = {2, 3, 4, 5}; // LED 연결 핀

void setup() {
  Serial.begin(9600);
  for (int i = 0; i < 4; i++) {
    pinMode(pins_LED[i], OUTPUT);
  }
  pinMode(A0, INPUT); // 가변저항 연결 핀 입력으로 설정
}

void loop() {
  int ADC_value = analogRead(A0); // ADC 값
  int PWM_value = ADC_value >> 2; // PWM 값
  Serial.print(String("ADC value : ") + ADC_value);
  Serial.println(String(", PWM value : ") + PWM_value);
  for (int i = 0; i < 4; i++) { // LED 밝기 조절
    analogWrite(pins_LED[i], PWM_value);
  }
  delay(1000);
}
