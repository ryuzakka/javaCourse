package array_ex;

public class Array_Ex {

	public static void main(String[] args) {
		
		// 1차원 배열
		int[] num = new int[5];
		
		// 2차원 배열
		int[][] arr = new int[5][5];
		
		// 행 => 0~4
		int n = 1;
		for(int i=0; i<5; i++) {
			for(int j=0; j<5; j++) {
				arr[i][j] = n;
				n++;
			}
		}
		// i=0 일 때 [0][0] , [0][1] , [0][2] , [0][3] , [0][4]
		// i=1 일 때 [1][0] , [1][1] , [1][2] , [1][3] , [1][4]
		// i=2 일 때 [2][0] , [2][1] , [2][2] , [2][3] , [2][4]
		// i=3 일 때 [3][0] , [3][1] , [3][2] , [3][3] , [3][4]
		// i=4 일 때 [4][0] , [4][1] , [4][2] , [4][3] , [4][4]
		
		for(int i=0; i<5; i++) {
			for(int j=0; j<5; j++) {
				System.out.print(arr[i][j] + " ");
			}
			System.out.println();
		}

	}

}
