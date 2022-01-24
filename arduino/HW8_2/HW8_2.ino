#include <LiquidCrystal.h>

LiquidCrystal lcd(44, 45, 46, 47, 48, 49);

float readTemperature() {
// 온도 센서 읽기
  int reading = analogRead(A1); 
  float temp_C = reading * 500.0 / 1024.0;
  return temp_C;
}

int readIlluminance() {
// 조도 센서 읽기
  int reading = analogRead(A2); 
  return reading;
}

void setup( ) {
  
}

void loop( ) {
  lcd.begin(16, 2);
  lcd.print("Temp:");
  lcd.print(readTemperature());
  lcd.print("\'C");
  lcd.setCursor(0, 1);
  lcd.print("Light:");
  lcd.print(readIlluminance());
  delay(1000);
}
