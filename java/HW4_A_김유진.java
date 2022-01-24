import java.io.FileInputStream;
import java.io.FileOutputStream; // ObjectOutputStream 객체 만들 때 필요로하는 클래스 오브젝트
import java.io.ObjectOutputStream;
import java.io.ObjectInputStream;
import java.io.IOException;
import java.io.Serializable;

public class Point implements Serializable{
	private double x;
	private double y;
	
	public Point() {
		this.x = 0.0;
		this.y = 0.0;
	}
	
	public Point(double x, double y) {
		this.x = x;
		this.y = y;
	}
	
	public void setX(double x) {
		this.x = x;
	}
	
	public void setY(double y) {
		this.y = y;
	}
	
	public double getX() {
		return x;
	}
	
	public double getY() {
		return y;
	}
	
	public double distance(Point pt) {
		return Math.sqrt(Math.pow(pt.getX() - x, 2.0) + Math.pow(pt.getY() - y, 2.0));
	}
	
	public static Point loadPoint(String fileName)
	{
		/*
		 * 파일에서 Point 객체의 value를 read하는 함수	
		 * static인 이유? 예시 메인 코드를 보면 객체 이름을 통해서 함수를 부르는 것이 아니라
		 * 				클래스의 이름을 통해서 호출하므로 static을 사용해야만 한다.
		 */
		ObjectInputStream inputStream = null;
		
		// 파일 open에 대한 try-catch문
		try
		{
			inputStream = new ObjectInputStream(new FileInputStream(fileName));
		}
		catch(IOException e)
		{
			System.out.println("Error opening input file " + fileName + ".");
			System.exit(0);
		}
		
		// Point 객체에 value 할당 try-catch문
		Point p = null;
		try {
			p = (Point)inputStream.readObject();
			inputStream.close();
		}
		catch(Exception e)
		{
			System.out.println("Error reading from file " + fileName + ".");
			System.exit(0);
		}
		
		return p;
	}
	
	public static void savePoint(String fileName, Point pt)
	{
		/*
		 * 파일에 Point 객체의 value를 write해주는 함수
		 * static인 이유? 예시 메인 코드를 보면 객체 이름을 통해서 함수를 부르는 것이 아니라
		 * 				클래스의 이름을 통해서 호출하므로 static을 사용해야만 한다.
		 */
		ObjectOutputStream outputStream = null;
		
		// 쓰기용 파일 open
		try
		{
			outputStream = new ObjectOutputStream(new FileOutputStream(fileName));
		}
		catch(IOException e)
		{
			System.out.println("Error opening output file " + fileName + ".");
			System.exit(0);
		}
		
		// 파일에 value write
		try
		{
			outputStream.writeObject(pt);
			outputStream.close();
		}
		catch(IOException e)
		{
			System.out.println("Error writing to file " + fileName + ".");
			System.exit(0);
		}
	}
	
	public String toString()
	{
		/*
		 * 지정된 형식이 없어, 임의로 출력 문자열 지정
		 * csv 파일을 생각한다면 x + "," + y로 하는게 맞지만,
		 */
		// 
		return ("x의 좌표 : " + x + " " +
				"y의 좌표 : " + y + '\n');
	}
}
