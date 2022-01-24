
public class RightArrow extends ShapeBase {
	private int offset, tail, length;
	
	/**
	 * Precondition: -
	  Postcondition: 생성자, 아무것도 들어오지 않는다면, tail과 length 모두 0으로 초기화
	 */
	public RightArrow() {
		super();
		offset = getOffset();
		tail = 0;
		length = 0;
	}
	
	/**
	 * Precondition: -
	  Postcondition: 매개변수가 3개인 생성자, 각각 할당해준다.
	 */
	public RightArrow(int theOffset, int theTail, int theLength) {
		super(theOffset);
		offset = theOffset;
		tail = theTail;
		length = theLength;
	}
	
	/**
	 * Precondition: -
	  Postcondition: 새롭게 tail과 length변수값을 넣어줄 때 사용하는 함수
	 */
	public void set(int newTail, int newLength) {
		tail = newTail;
		length = newLength;
	}
	
	/**
	 * Precondition: offset, length, tail
	  Postcondition: 상위 클래스인 ShapeBase 클래스의 drawAt으로 부터 불러지는 함수. super클래스의 추상함수를 정의한 부분
	  	
	 */
	public void drawHere() {

		for(int i = 0; i < length*2-1; i++) {
			// offset의 크기만큼 공백을 출력하기 위한 반복문
			for(int j=0; j<offset; j++) {
				System.out.print(' ');
			}
			
			// 화살표의 ㅡ 를 출력 (tail)
			char c = ' ';
			if(i == length-1) c = '*';
			
			for(int j = 0; j < tail-1; j++) {
				System.out.print(c);
			}
			
			// head의 제일 왼쪽 부분 출력을 위함
			if(i % 2 == 0) c = '*';
			else c = ' ';
			System.out.print(c);
			
			// head의 나머지 부분 출력을 위한 condition 설정 부분 (삼각형 고려)
			int condition = i;
			if (condition > length) condition = (length - 1) * 2 - condition;
			
			// 위에서 설정해준 condition에 따른 출력
			for(int j=0; j < condition; j++) {
				if(j == condition - 1 && i % 2 == 0) c = '*';
				else c = ' ';
				System.out.print(c);
			}
			
			System.out.println();
		}
	}
	
}
