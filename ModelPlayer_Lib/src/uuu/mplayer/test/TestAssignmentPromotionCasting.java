package uuu.mplayer.test;

public class TestAssignmentPromotionCasting {

	public static void main(String[] args) {
		byte c = 1;
		int i = 100 ;
		char a = 'a';
		short s = 2300 ;
		boolean b = true ;
		
		//i = (int)b; 	// boolean無法指派其他型別
		//b = (boolean)i; //其他型別無法指派給boolean
		
		i = a; //97
		System.out.println(i); //i
		
		a = (char)(i + 1);
		System.out.println((int)a);
		
		a = (char)s;
		a = (char)c;

	}

}
