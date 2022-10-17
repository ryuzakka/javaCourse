package lamda;

public class YourInter_Return {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		YourInter3 y3 = (x,y) -> {
			int tot = x + y;
			return tot;
		};
		System.out.println(y3.total(20, 30));
		
		y3 = (x,y) -> { return x + y; };
		System.out.println(y3.total(30, 40));
		
		y3 = (x,y) -> x+y;
		System.out.println(y3.total(30, 40));

	}

}
