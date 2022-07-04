package for_practice;

public class Arr1 {

	public static void main(String[] args) {
		// 1차원 배열 만들고 안에 값 입력하기
		// 10개의 크기를 가지는 정수형 배열을 생성
		// 각 배열의 인덱스에서 1~45까지의 임의의 값을 저장
		
		int[] arr = new int[10];
		
		for(int i=0; i<10; i++) {
			arr[i] = (int)(Math.random()*45 + 1);
		}
		
		for(int i=0; i<arr.length; i++) {
			System.out.print("arr[" + i + "] : ");
			System.out.println(arr[i]);
		}
	}
	
}
