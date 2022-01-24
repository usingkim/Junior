#include <LiquidCrystal.h>

LiquidCrystal lcd(44, 45,46,47,48,49);

byte user1[8] ={
  B00000, B10001, B00000, B00000, B10001, B01110, B00000, B00000
};

byte user2[8] = {
  B00000, B10001, B01010,B10001,B00000,B10001,B01110,B00000
};

void setup() {
  // put your setup code here, to run once:
  lcd.createChar(0, user1);
  lcd.createChar(1, user2);

  lcd.begin(16,2);
  lcd.clear();
  lcd.write(byte(0));
  lcd.clear();
  lcd.write(byte(0));
  lcd.setCursor(0, 1);
  lcd.write(byte(1));
}

void loop() {
  // put your main code here, to run repeatedly:

}
