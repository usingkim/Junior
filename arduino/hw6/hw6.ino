int pin_LED[] = {2, 3}; // LED 연결 핀
unsigned long time_previous, time_current, time_previous2;
unsigned long interval = 1000, interval2 = 1000; // 점멸 간격
boolean LED_state1 = false; // LED 상태
boolean LED_state2 = false;

void setup() {
  pinMode(A0, INPUT);
  pinMode(pin_LED[0], OUTPUT);
  pinMode(pin_LED[1], OUTPUT);
  digitalWrite(pin_LED[0], LED_state1);
  digitalWrite(pin_LED[1], LED_state2);
  Serial.begin(9600);
  time_previous = millis(); // 현재 시간
}

void loop() {
  time_current = millis();
  
  if (time_current - time_previous >= interval) {
    Serial.print("Current interval is ");
    Serial.print(interval);
    Serial.println(" ms.");
    time_previous = time_current;
    LED_state1 = !LED_state1;
    digitalWrite(pin_LED[0], LED_state1);
  }

  if (time_current - time_previous2 >= interval2) {
    Serial.print("Current interval is ");
    Serial.print(interval2);
    Serial.println(" ms.");
    time_previous2 = time_current;
    LED_state2 = !LED_state2;
    digitalWrite(pin_LED[1], LED_state2);
  }
  
  int adc = analogRead(A0);
  interval = map(adc, 0, 1023, 500, 1500);
  interval2 = map(adc, 0, 1023, 1500, 500);
}
