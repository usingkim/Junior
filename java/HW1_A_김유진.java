import java.util.Scanner;

public class FlowO {
	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
		 double value;
		 
		 System.out.print("Please enter a number: ");
		 value = sc.nextDouble();
		 
		 if((value >= 60.3 && value <= 70.25) || value > 150.45) {
			 System.out.print("YES");
		 }
		 else {
			 System.out.print("NO");
		 }
		 
		 sc.close();
	}

}
