
public class Point {
	private double x, y;
	
	/**
	  Precondition: -
	  Postcondition: 생성자이다. 매개변수로 들어온 x 값과 y 값으로 배정한다.
	 */
	public Point(double x, double y) {
		this.setX(x);
		this.setY(y);
	}
	
	/**
	  Precondition: -
	  Postcondition: 현재 Class 뿐만 아니라, 다른 Class에서 x 값에 접근할 수 있는 method이다.
	 */
	public double getX() {
		return x;
	}
	
	/**
	  Precondition: -
	  Postcondition: 현재 Class 뿐만 아니라, 다른 Class에서도 y 값에 접근할 수 있는 method이다.
	 */
	public double getY() {
		return y;
	}
	
	/**
	  Precondition: -
	  Postcondition: 현재 Class 뿐만 아니라, 다른 Class에서도 x 값을 설정할 수 있는 method이다.
	 */
	public void setX(double x1) {
		x = x1;
	}
	
	/**
	  Precondition: -
	  Postcondition: 현재 Class 뿐만 아니라, 다른 Class에서도 y 값을 설정할 수 있는 method이다.
	 */
	public void setY(double y1) {
		y = y1;
	}
	
	/**
	  Precondition: -
	  Postcondition: 점과 점 사이의 거리를 출력시켜주는 method로 매개변수 pt의 값과 this 객체에 들어있는 값 사이의 거리를 측정해준다.
	 */
	public double distance(Point pt) {	
		return Math.sqrt(Math.pow(this.x - pt.x, 2.0) + Math.pow(this.y - pt.y, 2.0));
	}
}
