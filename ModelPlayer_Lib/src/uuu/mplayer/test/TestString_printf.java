package uuu.mplayer.test;

import java.time.LocalDate;

public class TestString_printf {

	public static void main(String[] args) {
		String dateString = "2000-01-05";
		LocalDate date = LocalDate.parse(dateString);
		System.out.printf("%s",date);
		String s = dateString.substring(1);
		System.out.println(Math.PI);

	}

}
