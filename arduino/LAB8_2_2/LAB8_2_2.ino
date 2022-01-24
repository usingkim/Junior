#include <LiquidCrystal.h>

LiquidCrystal lcd(44, 45, 46, 47, 48, 49);

void setup() {
  // put your setup code here, to run once:
  lcd.begin(16, 2);
  lcd.setCursor(0, 0);
  lcd.write('1');
  lcd.setCursor(5, 0);
  lcd.write('2');
  lcd.setCursor(0, 1);
  lcd.write('3');
  lcd.setCursor(5, 1);
  lcd.write('4');
}

void loop() {
  // put your main code here, to run repeatedly:

}
