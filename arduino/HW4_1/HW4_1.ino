int count = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int state = 1;
  char buffer[5][128];
  String sort[5];

  while (true) {
    if (state == 1) {
      Serial.print("Enter the ");
      Serial.print(count + 1);
      Serial.print("th Word --> ");
      state = 2;

    }
    else if (state == 2) {
      while (Serial.available()) {
        int len = Serial.readBytesUntil('\n', buffer[count], 127);
        if (len > 0) {
          buffer[count][len] = '\0';
          sort[count] = buffer[count];
          Serial.println(sort[count]);
          count++;
          if (count < 5) state = 1;
          else state = 3;
          break;
        }
      }
    }

    else if (state == 3) {
      Serial.println("After Sorting");
      for (int i = 0; i < 4; i++) {
        for (int j = i + 1; j < 5; j++) {
          int compare = sort[i].compareTo(sort[j]);
          if (compare > 0) {
            String temp = sort[i];
            sort[i] = sort[j];
            sort[j] = temp;
          }
        }
      }

      for (int i = 0; i < 5; i++) {
        Serial.println(sort[i]);
      }

      state = 1;
      count = 0;
    }

  }
}
