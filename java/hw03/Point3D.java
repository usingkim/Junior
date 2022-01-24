
public class Point3D extends Point{
	private double x, y, z;
	
	/**
	 * Precondition: -
	  Postcondition: 매개변수가 3개인 생성자, 각각 할당해준다.
	 */
	public Point3D(double x, double y, double z){
		super(x, y);
		this.x = x;
		this.y = y;
		this.z = z; 
	}
	
	/**
	 * Precondition: -
	  Postcondition: Point class에 z는 존재하지 않으므로, 여기서 z의 값을 설정
	 */
	public void setZ(double z) {
		this.z = z;
	}
	
	/**
	 * Precondition: -
	  Postcondition: Point class에 z는 존재하지 않으므로, 여기서 z의 값을 return
	 */
	public double getZ() {
		return z;
	}
	
	/**
	 * Precondition: x, y, z, pt
	  Postcondition: 점과 점 사이의 거리를 출력해준다.
	 */	
	public double distance(Point3D pt) {
		return Math.sqrt(Math.pow(pt.getX() - x, 2.0) + Math.pow(pt.getY() - y, 2.0) + Math.pow(pt.getZ() - z, 2.0));
	}
}
