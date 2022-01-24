
public class GenericsType<T> {
	private T t;
	
	public T get() // return type은 T에 맞춰야하므로, 이걸로 바꿔줬다.
	{
		return t;
	}
	
	public void set(T t1) // set함수의 매개변수로 T가 들어온다.
	{
		t = t1;
	}
	
	public static boolean isEqual(GenericsType g1, GenericsType g2)
	{		
		return g1.get().equals(g2.get());
	}
	
	public static void main(String args[]){
		 GenericsType<String> type = new GenericsType();
		 type.set("Pankaj");
		 GenericsType type1 = new GenericsType();
		 type1.set("Pankaj");
		 type1.set(10); // 만약 이 줄이 주석처리된다면 true를 출력한다.
		 boolean isEqual = GenericsType.isEqual(type, type1);
		 System.out.println(isEqual);
		}
}

