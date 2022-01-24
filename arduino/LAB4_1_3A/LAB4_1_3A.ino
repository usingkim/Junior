void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int state = 1, len=0;
  char buffer[128];

  while(true){
    if(state==1){
      Serial.print("Enter a String --> ");
      state = 2;
    }

    while(Serial.available()){
      char data = Serial.read();
      if(data=='\n'){
        buffer[len]='\0';
        Serial.println(String(buffer) + " [" + String(len) + "]");
        state=1;
        len=0;
        break;
      }
      buffer[len++]=data;
    }   
  }
}
