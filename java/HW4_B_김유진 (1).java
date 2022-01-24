import java.io.PrintWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.File;

public class CsvWriter 
{
	PrintWriter outputStream;
	
	public CsvWriter()
	{
		outputStream = null;
	}
	
	public CsvWriter(String fileName)
	{
		/*
		 * output file을 생성해주는 클래스의 생성자이다.
		 * 예시로 올라온 csv 파일을 보면 단순히 기존 파일에 append해줄 뿐만 아니라, 
		 * x, y 변수가 가장 상단에 위치해있음을 알 수 있다.
		 * 따라서 File class를 import 해줬고, 그 클래스의 메소드인 exists를 이용해 존재여부를 확인했다.
		 * 만약 존재하지 않는다면, 가장 상단에 x,y를 print해줘야하고 아니라면 넘어간다.
		 * */
		try
		{
			boolean forVal = false;
			File isExistConfirm = new File(fileName);
			if (isExistConfirm.exists()) forVal = true;

			outputStream = new PrintWriter(new FileOutputStream(fileName,true));
			if (!forVal) outputStream.println("x,y");
		}
		catch(FileNotFoundException e)
		{
			System.out.println("Error opening the file" + fileName);
			System.exit(0);
		}
	}
	
	public void writeRow(Point pt)
	{
		/*
		 * 기존 파일에 Point 객체 pt의 값을 csv 형태로 추가해준다.
		 * Point 클래스를 선언할 때 csv의 형태로 toString을 해줬으므로 println에 객체의 이름만 넣어도 된다.
		 */
		try
		{
			outputStream.println(pt);
		}
		catch (Exception e)
		{
			System.out.println("Error writing to file csv.");
			System.exit(0);
		}
	}
	
	public void close()
	{
		/*
		 * 파일을 닫기 위해서 사용된 함수
		 * */
		outputStream.close();
	}
	
	public String toString()
	{
		return null;
	}
}
