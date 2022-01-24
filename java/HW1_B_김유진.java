import java.util.Scanner;

public class Similar_Exponential {
	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
		 double G0, Gi, a, b, T;
		 int i = 0;
		 
		 System.out.print("Enter G0: ");
		 G0 = sc.nextDouble();
		 System.out.print("Enter a: ");
		 a = sc.nextDouble();
		 System.out.print("Enter b: ");
		 b = sc.nextDouble();
		 System.out.print("Enter T: ");
		 T = sc.nextDouble();
		 
		 Gi = G0;
		 while(G0 < T) {
			 Gi = G0 * a + b;
			 i++;
			 G0 = Gi;
		 }
		 System.out.println("Answer: " + i);
		 sc.close();
		}

}
