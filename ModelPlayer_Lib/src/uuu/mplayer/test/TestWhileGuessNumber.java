package uuu.mplayer.test;

import java.util.Random;
import java.util.Scanner;

public class TestWhileGuessNumber {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in) ;
		Random random = new Random();		
		int answer = random.nextInt(10) + 1;
		
		System.out.println("請輸入一個1 ~ 10的整數 : ");
		int data = scanner.nextInt();
		
		while(data != answer) {
			System.out.println("答錯了，請再輸入1~10整數");
			data = scanner.nextInt();
		}
		System.out.println("答對了");
		

	}

}
