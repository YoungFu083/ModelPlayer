package uuu.mplayer.test;

import java.time.LocalDate;

public class TestIfSwitch {

	public static void main(String[] args) {
		int dayOfWeek = LocalDate.of(2021,4,18).getDayOfWeek().getValue();
		
		System.out.println(dayOfWeek);
//		if(dayOfWeek == 1 || dayOfWeek == 2 || dayOfWeek == 4) {
//			System.out.println("整天");
//		}else if(dayOfWeek == 3 || dayOfWeek == 5) {
//			System.out.println("半天");
//		}else if(dayOfWeek == 6 || dayOfWeek == 7) {
//			System.out.println("放假");
//		}else {
//			System.out.println("Error");
//		}
		
		switch (dayOfWeek) {
			case 1:
			case 2:
			case 4:
				System.out.println("整天");
				break;
			case 3:
			case 5:
				System.out.println("半天");
				break;
			case 6:
			case 7:
				System.out.println("放假");
				break;
			default:
				System.out.println("Error");			
		}
		
		
		
	}

}
