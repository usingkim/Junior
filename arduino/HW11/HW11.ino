#include <Wire.h>
#include <ADXL345.h>

ADXL345 adxl; //variable adxl is an instance of the ADXL345 library
bool state21 = false, state22 = false;
int count_tap = 0, count_act = 0;

void setup() {
  Serial.begin(9600);
  adxl.powerOn();

  //set activity/ inactivity thresholds (0-255)
  adxl.setActivityThreshold(75); //62.5mg per increment
  adxl.setInactivityThreshold(75); //62.5mg per increment
  adxl.setTimeInactivity(10); // how many seconds of no activity is inactive?

  //look of activity movement on this axes - 1 == on; 0 == off 
  adxl.setActivityX(1);
  adxl.setActivityY(1);
  adxl.setActivityZ(1);

  //look of inactivity movement on this axes - 1 == on; 0 == off
  adxl.setInactivityX(1);
  adxl.setInactivityY(1);
  adxl.setInactivityZ(1);

  //look of tap movement on this axes - 1 == on; 0 == off
  adxl.setTapDetectionOnX(0);
  adxl.setTapDetectionOnY(0);
  adxl.setTapDetectionOnZ(1);

  //set values for what is a tap, and what is a double tap (0-255)
  adxl.setTapThreshold(50); //62.5mg per increment
  adxl.setTapDuration(15); //625us per increment
  adxl.setDoubleTapLatency(80); //1.25ms per increment
  adxl.setDoubleTapWindow(200); //1.25ms per increment

  //set values for what is considered freefall (0-255)
  adxl.setFreeFallThreshold(7); //(5 - 9) recommended - 62.5mg per increment
  adxl.setFreeFallDuration(45); //(20 - 70) recommended - 5ms per increment

  //setting all interrupts to take place on int pin 1
  //I had issues with int pin 2, was unable to reset it
  adxl.setInterruptMapping(ADXL345_INT_SINGLE_TAP_BIT, ADXL345_INT1_PIN);
  adxl.setInterruptMapping(ADXL345_INT_DOUBLE_TAP_BIT, ADXL345_INT1_PIN);
  adxl.setInterruptMapping(ADXL345_INT_FREE_FALL_BIT, ADXL345_INT1_PIN);
  adxl.setInterruptMapping(ADXL345_INT_ACTIVITY_BIT, ADXL345_INT1_PIN);
  adxl.setInterruptMapping(ADXL345_INT_INACTIVITY_BIT, ADXL345_INT1_PIN);

  //register interrupt actions - 1 == on; 0 == off  
  adxl.setInterrupt(ADXL345_INT_SINGLE_TAP_BIT, 1);
  adxl.setInterrupt(ADXL345_INT_DOUBLE_TAP_BIT, 1);
  adxl.setInterrupt(ADXL345_INT_FREE_FALL_BIT, 1);
  adxl.setInterrupt(ADXL345_INT_ACTIVITY_BIT, 1);
  adxl.setInterrupt(ADXL345_INT_INACTIVITY_BIT, 1);

  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  byte interrupts = adxl.getInterruptSource();

  // 두드리면 LED가 켜지고, 꺼지는 동작 반복
  if (adxl.triggered(interrupts, ADXL345_SINGLE_TAP)) {
    if (count_tap % 2 == 1 && count_tap != 1){
      digitalWrite(12, LOW);
      Serial.print("tap toggle : ");
      Serial.println(count_tap / 2);
    }
    else
      digitalWrite(12, HIGH);
    count_tap++;
    state21 = !state21;
  }


  // 보드를 흔들면, LED가 켜지고, 멈춘 후 , 다시 흔들면 LED가 꺼지는 동작 (toggle)
  if (adxl.triggered(interrupts, ADXL345_ACTIVITY)) {
    if (state22 == false) {
      if (count_act % 2 == 0 && count_act != 0) {
        digitalWrite(13, LOW);
        Serial.print("activity toggle : ");
        Serial.println(count_act / 2);
      }
      else
        digitalWrite(13, HIGH);
      count_act++;
      state22 = true;
    }
  }

  if (adxl.triggered(interrupts, ADXL345_INACTIVITY)) {
    state22 = false;
  }
}
