#include <SPI.h>

char buf[100];
// pos와 process_it은 인터럽트 처리 루틴에서 값을 바꾸는 변수이므로 
// volatile 선언을 통해 매번 값을 참조하도록 설정해야 한다.

volatile byte pos = 0;
volatile boolean process_it = false;

void setup() {
  Serial.begin(9600);

  //MOSI,SCLK,SS는 입력으로 설정하지 않아도 된다.
  //MISO 역시 이 예에서는 사용하지 않으므로 생략할 수 있다.
  pinMode(MISO, OUTPUT);
  pinMode(MOSI, INPUT);
  pinMode(SCK, INPUT);
  pinMode(SS, INPUT);
  //마스터의 전송 속도에 맞추어 통신 속도를 설정
  SPI.setClockDivider(SPI_CLOCK_DIV16);
  //SPI 통신을 위한 레지스터 설정
  //SPCR : SPI Control Register
  SPCR |= (1 << SPE);
  SPCR &= ~(1 << MSTR);
  SPCR |= (1 << SPIE);
}


ISR(SPI_STC_vect) {
  byte c = SPDR;
  if (pos < sizeof(buf)) {
    buf[pos++] = c;

    if (c == '\n') {
      process_it = true;
    }
  }
}

void loop() {
  if (process_it) {
    buf[pos] = 0;
    Serial.print(buf);

    pos = 0;
    process_it = false;
  }
}
