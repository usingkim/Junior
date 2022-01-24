
public class RightArrow extends ShapeBase {
	private int offset, tail, length;
	
	public RightArrow() {
		super();
		offset = getOffset();
		tail = 0;
		length = 0;
	}
	
	public RightArrow(int theOffset, int theTail, int theLength) {
		super(theOffset);
		offset = theOffset;
		tail = theTail;
		length = theLength;
	}
	
	public void set(int newTail, int newLength) {
		tail = newTail;
		length = newLength;
	}
	
	public void drawHere() {
		for(int i=0; i<offset; i++) {
			System.out.println();
		}
		for(int i = 0; i < length*2-1; i++) {
			for(int j=0; j<offset; j++) {
				System.out.print(' ');
			}
			char c = ' ';
			if(i == length-1) c = '*';
			
			for(int j = 0; j < tail-1; j++) {
				System.out.print(c);
			}
			
			if(i % 2 == 0) c = '*';
			else c = ' ';
			System.out.print(c);
			
			int condition = i;
			if (condition > length) condition = length * 2 - condition - 2;
			
			for(int j=0; j < condition; j++) {
				if(j == condition - 1 && i % 2 == 0) c = '*';
				else c = ' ';
				System.out.print(c);
			}
			
			System.out.println();
		}
	}
	
}
