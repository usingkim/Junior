void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  String op;
  op = Serial.read();

  if(Serial.available()){

    int i = op.indexOf(" ");

    String op1, op2;
    op1 = op.substring(0, i);
    op2 = op.substring(i+2, op.length());

    int operation[2];

    operation[0] = op1.toInt();
    operation[1] = op2.toInt();

    int result = operation[0]+operation[1];

    Serial.println(result);
  }
}
