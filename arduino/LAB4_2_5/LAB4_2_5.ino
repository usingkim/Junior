int pin_button = 15;
boolean state_previous = false;
boolean state_current;
int count = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pin_button, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  state_current = digitalRead(pin_button);
  if(state_current){
    if(state_previous==false){
      count++;
      state_previous = true;
      Serial.println(count);
    }
  }
  else{
    state_previous = false;
  }
}
