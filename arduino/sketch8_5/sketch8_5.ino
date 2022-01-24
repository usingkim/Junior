int pin_button = 14; // 버튼 연결 핀
int pin_LED1 = 13, pin_LED2 = 2; // LED 연결 핀
unsigned long time_previous, time_current;
boolean LED_state1 = false; // LED 상태
boolean LED_state2 = false;
boolean button_state_previous = false;
boolean button_state_current;

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
  button_state_current = digitalRead(pin_button);
  if (button_state_current) { // 버튼이 눌러진 경우
    if (button_state_previous == false) {
      button_state_previous = true;
      LED_state2 = !LED_state2;
      digitalWrite(pin_LED2, LED_state2);
    }
    else {
      button_state_previous = false;
    }
  }
}
