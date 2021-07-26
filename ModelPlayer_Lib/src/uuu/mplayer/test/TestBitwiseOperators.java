package uuu.mplayer.test;

public class TestBitwiseOperators {

	public static void main(String[] args) {
		byte a = 6;//0b 0000_0110
		byte b = 5;//0b 0000_0101
		
		
		System.out.println(~a);//0b 1111_1001
		System.out.println(a & b);//0b 0000_0100
		System.out.println(a | b);//0b 0000_0111
		System.out.println(a ^ b);//0b 0000_0011
		
		byte c = 4 ;//0b 0000_0100
		byte c1 = -4 ;//0b 1111_1100
		byte c2 = 2;
		System.out.println(c >> 1);//0b 0000_0010
		System.out.println(c << 1);//0b 0000_1000
		
		System.out.println(c1 >> 2);//0b 1111_1111
		System.out.println((byte)(c1 << 2));//0b 1111_0011
		System.out.println((byte)(c1 >>> c2));//0b 0011_1111
		
		//三元運算子
		
		int discount = 21;
		if(discount % 10 == 0) {
			System.out.println((100 - discount/10) + "折"); 
		}else {
			System.out.println((100 - discount) + "折");
		}
		
		System.out.println(discount % 10 == 0 ? ((100 - discount)/10) : (100 - discount) + "折");
	}

}
