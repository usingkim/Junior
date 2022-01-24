int Enable1 = 38;
int PWM1 = 9;
int DIR1 = 39;

int button_pin = 14;
boolean direction = true;

void setup(){

  pinMode(Enable1, OUTPUT);
  pinMode(PWM1, OUTPUT);
  pinMode(DIR1, OUTPUT);
  
  digitalWrite(Enable1, HIGH);
  digitalWrite(DIR1, direction);
  digitalWrite(PWM1,!direction);

  pinMode(button_pin, INPUT);
  Serial.begin(9600);
}


void loop() {
  if (digitalRead(button_pin)) {
    direction = !direction;
    if (direction) // clockwise
      Serial.println("Clockwise...");
    else
      Serial.println("Anti-clockwise...");
    digitalWrite(DIR1, direction);
    digitalWrite(PWM1, !direction);
    delay(2000);
  }
}
