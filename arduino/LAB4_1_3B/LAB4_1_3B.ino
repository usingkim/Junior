void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int state = 1;
  char buffer[128];

  while(true){
    if(state==1){
      Serial.print("Enter a String --> ");
      state = 2;
    }

    while(Serial.available()){
      int len=Serial.readBytesUntil('\n', buffer, 127);
      if(len>0){
        buffer[len]='\0';
        String in_str = buffer;
        Serial.println(in_str + " [" + in_str.length() + "]");
        state=1;
        break;
      }
    }   
  }
}
