package uuu.mplayer.test;

public class TestAssign {

	public static void main(String[] args) {
		//=, +=, -=, *=, /=, %=, &=, |=, ^=, >>=, <<=, >>>=, +=
		
		byte a = 1;
		double b = 2.5;
		a += (100 / b - 3L);
		System.out.println(a);//38
		a = (byte) (a + (100 / b - 3L));
		System.out.println(a);//75
		
		a += 1;
		System.out.println(a);//76
		a = (byte) (a + 1) ;
		System.out.println(a);//77
		
		String s = "Hellow";
		//s = s+"world";
		s += " world";
		System.out.println(s);
		
		int sum = 0;
		for(int i = 1 ; i <= 100 ; i++) {
			sum += i;
		}
		System.out.println(sum);
		
		double listPrice = 100 ;
		int discount = 21;
		double price = listPrice;
		if(discount > 0 ) {
			//price = price * (100 - discount) / 100 ;
			price *= (100d - discount) / 100 ;
			
		}

		System.out.println(price);
	}

}
