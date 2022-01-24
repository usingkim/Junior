#include <LiquidCrystal.h>

LiquidCrystal lcd(44, 45, 46, 47, 48, 49);

void setup() {
  // put your setup code here, to run once:
  lcd.begin(16, 2);
  lcd.print("Hello World!");
  lcd.setCursor(0, 1);
  lcd.print("babo");
}

void loop() {
  // put your main code here, to run repeatedly:

}
