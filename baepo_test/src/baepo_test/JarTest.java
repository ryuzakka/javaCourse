package baepo_test;

import java_baepo.MyJob;

public class JarTest {

	public static void main(String[] args) {
		
		MyJob mj = new MyJob();
		
		mj.input(60, 80, 90);
		mj.cal();
		
		System.out.println(mj.getTot());
		System.out.println(mj.getAvg());

	}

}
