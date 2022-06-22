package test02_database;

import java.util.Scanner;

public class DB_Main {

	public static void main(String[] args) throws Exception {
		
		DB_Task db = new DB_Task();
		
		db.insert();
		
		db.select();
		
		
		/*
		Scanner sc = new Scanner(System.in);
		String a = sc.next();
		String add = sc.next();
		add += sc.nextLine();
		add.replace(" ", "");
		String b= sc.next();
		
		System.out.println(a);
		System.out.println(add);
		System.out.println(b);
		*/
	}

}
