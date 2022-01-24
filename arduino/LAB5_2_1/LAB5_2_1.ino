int RGB_LED[] = {6, 7, 8}; 
void setup() {
  for (int i = 0; i < 3; i++) {
    pinMode(RGB_LED[i], OUTPUT);
  }
}

void loop() {
  // Blue 색상 조절. Green, Red는 끔
  digitalWrite(RGB_LED[1], HIGH);
  digitalWrite(RGB_LED[2], HIGH);
  for (int i = 255; i >= 0; i--) {
    analogWrite(RGB_LED[0], i);
    delay(10);
  }

  // Green 색상 조절. Blue, Red는 끔
  digitalWrite(RGB_LED[0], HIGH);
  digitalWrite(RGB_LED[2], HIGH);
  for (int i = 255; i >= 0; i--) {
    analogWrite(RGB_LED[1], i);
    delay(10);
  }

  // Red 색상 조절. Green, Blue는 끔
  digitalWrite(RGB_LED[0], HIGH);
  digitalWrite(RGB_LED[1], HIGH);
  for (int i = 255; i >= 0; i--) {
    analogWrite(RGB_LED[2], i);
    delay(10);
  }
}
