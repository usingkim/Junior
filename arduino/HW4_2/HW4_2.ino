int pin_button = 21;
boolean state_previous = false;
boolean state_current;
int count = 0;
int pins[]={2,3,4,5};
int state = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pin_button, INPUT);
  for(int i=0;i<4;i++){
    pinMode(pins[i], OUTPUT);
    digitalWrite(pins[i], LOW);
  }
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

  for(int i=0;i<4;i++){
    if(i==state){
      Serial.print("O ");
      digitalWrite(pins[i], HIGH);
    }
    else{
      Serial.print("X ");
      digitalWrite(pins[i], LOW);
    }
  }
  Serial.println();
  
  if(count%2==0){
    state++;
    state = state % 4;
  }  
  else{
    if(state == 0) state = 4;
    state--;
  }
  
  
  delay(500);
}
