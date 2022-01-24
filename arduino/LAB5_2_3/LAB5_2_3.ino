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
  int PWM_value[4] = {0, };
  Serial.println(String("ADC value : ") + ADC_value);
  for (int i = 3; i >= 0; i--) { // 4개 LED의 밝기로 나눔
    if (ADC_value >= 256 * i) {
      PWM_value[i] = ADC_value - 256 * i;
      ADC_value -= (PWM_value[i] + 1);
    }
    analogWrite(pins_LED[i], PWM_value[i]); // LED 밝기 조절
    Serial.print(" ");
    Serial.print(PWM_value[i]);
  }
  Serial.println();
  delay(500);
}
