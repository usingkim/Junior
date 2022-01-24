#include <pitches.h>

int speakerPin = 57;
int melody[] = {
  0, NOTE_C4, NOTE_D4, NOTE_E4, NOTE_F4, NOTE_G4, NOTE_A4, NOTE_B4, NOTE_C5
};
int gap = 1023 / 9;
int last = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(A0, INPUT);
  
}

void loop() {
  int adc = analogRead(A0);

  Serial.println(adc);

  if(last != adc/gap){
    noTone(A3);
    if(adc > gap*9) tone(A3, melody[8]);
    else tone(A3, melody[adc / gap]);
  }
  last = adc/gap;
  delay(500);
}
