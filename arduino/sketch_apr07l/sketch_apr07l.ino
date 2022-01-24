void setup() {
  Serial.begin(9600);     
}

void loop() {
  String s_str = "aa";
  char c_str = "bb";
  
  Serial.println(s_str+c_str);      // (1)
  Serial.println(c_str+s_str);      // (2)
  Serial.println(s_str+3.14);       // (3)
  Serial.println(c_str+" Hello");     // (4)
  Serial.println(String(3.14,1)+'='+"pi");  // (5)
  
  while (true);
}
