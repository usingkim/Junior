int count=0;
int num1, num2, sum;

void setup() {
  Serial.begin(9600);
  Serial.println("Enter 2 Integers to add");
}

void loop() {
  
  if(Serial.available()){
    if(count%2==0){
      num1 = Serial.parseInt();
      Serial.print(num1);
      Serial.print(" + ");
    }
    else{
      num2 = Serial.parseInt();
      Serial.print(num2);
      Serial.print(" = ");
      sum=num1+num2;
      Serial.println(sum);
      Serial.println("Enter 2 Integers to add");
    }
   count++;
  }
}
