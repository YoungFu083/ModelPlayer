package uuu.mplayer.test;

import java.util.Scanner;

public class TestOddEvenNumber {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		int data = scanner.nextInt();
		
		data = Math.abs(data);
		
		if(data % 2 == 1) {
			System.out.println("奇數");
		}else {
			System.out.println("偶數");
		}
		
		switch (data % 2) {
		case 0:
			System.out.println("偶數");
			break;
		case 1:
			System.out.println("奇數");
			break;
		default:
			System.out.println("輸入錯誤");				
		}

	}

}
