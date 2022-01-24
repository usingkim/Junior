#include <Key.h>
#include <Keypad.h>
#include <Servo.h>
#include<SoftwareSerial.h>

SoftwareSerial HM10(0,1);
char receivedString[10]; //받는 문자열
int hmstate = 1;//ble의 상태

int state = 0; // 잠금메커니즘을 부드럽게하기위해 추가
int doorPin = 12; // 마그네틱 도어 센서 핀번호
int doorState; // 0 close , 1 open switch
int samePW = 0; // 비밀번호가 맞는지 확인
int countPW = 0;
char PW[5]; // 비밀번호 설정
const byte ROWS = 4;
const byte COLS = 3;
byte rowPins[ROWS] = { 2,3,4,5 };
byte colPins[COLS] = { 6,7,8 }; // 키패드핀을 digital

char keys[ROWS][COLS] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};

Servo myservo;
Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS);

void setPW(){   
  if (hmstate == 1) {
    Serial.print("Enter a String --> ");
    hmstate = 2;
  }
  if (HM10.available()) { 
    int len = HM10.readBytes(receivedString, 9);
    if (len > 0) {     
      receivedString[len] = '\0';
      String in_str = String(receivedString);
      Serial.println(in_str + " [" + in_str.length()+"]");          
      hmstate = 1;
      
      if(receivedString[0] =="p" && receivedString[1] == "w" && len == 6)  //receivedString 이 pw로 시작한다면-시작하면 true
      {
        PW[0] = receivedString[2];
        PW[1] = receivedString[3];
        PW[2] = receivedString[4];
        PW[3] = receivedString[5];
        PW[4] = '\0'
          
        receivedString[0] = '\0';
    
        Serial.print(PW);
      }
    }
  }
  
}

void setup() {

   Serial.begin(9600);
   HM10.begin(9600); //블루투스 시리얼 개방
   Serial.println("AT command");
   PW[0] = '1';
   PW[1] = '1';
   PW[2] = '1';
   PW[3] = '1';
      
   pinMode(11, INPUT);
   pinMode(10, INPUT);
   pinMode(9, INPUT);
   pinMode(8, INPUT);
   pinMode(7, INPUT);
   pinMode(6, INPUT);
   pinMode(5, INPUT);
   pinMode(4, INPUT);//디지털입력핀으로

   myservo.attach(13); // 서보모터를 13번핀 연결
   myservo.write(90); // 초기 90도

   pinMode(doorPin, INPUT_PULLUP);
}


void loop() {
//※SW팀 보는용(보고 지워주세요)※
//state를 둔 이유는 doorState 센서 값이 가끔 오류가 날 수도 있어서 (잠겼는데 doorState==HIGH)
//수동으로 주는 값이 있는게 오류가 줄어져서 만들었어요
//state=0 열린상태 state=1 잠긴상태
//doorState=LOW 잠긴상태 doorState=HIGH 열린상태 
//0과 LOW / 1과 HIGH 이면 에러니까 잡아내고 state 바꿔주기를 위해 만든거에요
  
   setPW();//비밀번호 세팅
   doorState = digitalRead(doorPin); //도어센서의 값을 읽어서 담는다
   char key = keypad.getKey(); // 키패드 입력

   if (state == 0 && doorState == LOW)// 마그네틱센서가 붙어있을때
   {
      delay(2000);
      myservo.write(0);
      state = 1;
   }

   if (state == 1 && doorState == LOW)//완전 잠금 상태이면
   {
      if ((key >= '0' && key <= '9') || (key == '*' || key == '#'))
      {//키패드에 있는 값이 들어온건지 확인
        Serial.println(key);
         if (key == PW[countPW])
         {
            countPW++;
            samePW++;
         }
         else if (key != PW[countPW])   countPW++;

         if (key == '#') Again(); //#누르면 다시 칠 수 있도록 초기화

         if (countPW == 4)
         {
            if (samePW == 4) Open(); //비밀번호 4자리 눌렀고 모든 자리 비밀번호가 일치하면 열림
            else Close();
         }

      }
   }

   else if (state == 1 && doorState == HIGH) state = 0; 
   else if (state == 0 && doorState == HIGH) myservo.write(90);//완전 열림상태
}



int Open()
{
   samePW = 0;
   countPW = 0; //비밀번호 대조를 위한 변수들 초기화

   myservo.write(90);//문이 열리고 state 상태 바뀜
   delay(5000);
   state = 0;
}

void Close()
{
   myservo.write(0);
   samePW = 0;
   countPW = 0; //비밀번호 대조를 위한 변수들 초기화

}

void Again()
{
   samePW = 0;
   countPW = 0; //비밀번호 대조를 위한 변수들 초기화
}
