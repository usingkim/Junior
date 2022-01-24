
public class Counter {
	private int value;
	
	/**
	  Precondition: -
	  Postcondition: value의 값을 1만큼 증가시켜주는 method
	 */
	public void increase() {
		value++;
	}
	
	/**
	 * Precondition: -
	  Postcondition: value의 값을 1만큼 감소시켜주는 method
	  	단, value값은 negative value가 될 수 없으므로 삼항연산자를 이용하여 
	  	value 값이 0보다 크면 1만큼 decrease를 해주고, 0 이하면 0을 value에 값을 넣어준다
	 */
	public void decrease() {
		value = value > 0? (value--) : 0;
	}
	
	/**
	  Precondition: -
	  Postcondition: value 값을 0으로 초기화시켜준다.
	 */
	public void reset() {
		value = 0;
	}
	
	/**
	  Precondition: -
	  Postcondition: value 값을 화면에 출력시켜주는 method
	 */
	public void displayValue() {
		System.out.println(value);
	}
}
