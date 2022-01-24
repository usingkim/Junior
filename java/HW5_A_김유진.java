import java.util.ArrayList;

public class PrimeArray {
	
	private ArrayList<Integer> list;
	
	public PrimeArray(int size)
	{
		// 들어온 size만큼 배열에 prime num 저장해주는 함수
		list = new ArrayList<Integer>(size);
		
		// size만큼의 prime number를 arraylist에 저장해주기 위한 구문
		int count, i = 2;
		while (list.size() < size) {
			count = 0;
			for (int j = 2; j<=i; j++)
			{
				if (i % j == 0) count++;
				if (count > 1) break;
			}
			if (count == 1)
				list.add(i);
			
			if (list.size() >= size) break;
			i++;
		}
	}
	
	public void add()
	{
		// 1개의 prime number를 더해줘야한다.
		
		// 예시 main문에서는 처음부터 size가 0이 아니지만, 혹시나 size가 0일 경우를 대비해 if문 생성
		if (list.size() == 0) {
			list.add(2);
			return;
		}
		
		int num = list.get(list.size()-1); 
		// 불필요한 연산을 막기위해 마지막 원소의 다음 수부터 prime인지 아닌지 판별을 진행한다.
		int count, i = num + 1;
		while (true) {
			count = 0;
			for (int j = 2; j<=i; j++)
			{
				if (i % j == 0) count++;
				if (count > 1) break;
			}
			if (count == 1) {
				list.add(i);
				return;
			}
			i++;
		}
	}
	
	public int[] getArray()
	{
		// arrayList가 아닌 array로 return을 해줘야하는 함수
		int[] nums = new int[list.size()];
		int i=0;
		
		// for each 구문을 이용해서 obj를 int타입으로 변환시켜준 뒤 배열에 저장해준다.
		for(Object obj : list.toArray())
		{
			nums[i] = (int) obj;
			i++;
		}
		return nums;
	}
}
