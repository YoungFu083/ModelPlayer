package uuu.mplayer.test;

public class Test99 {

	public static void main(String[] args) {
		int i = 1;
		int j = 0;
//		System.out.print(i + " * " + j + " = " + (i * j) + "\t");
		while(i < 10) {	
//			++j;
			if(++j > i) {				
				if(j == 10) {
					i++;
					j = 0;
					System.out.println();
				}
				continue;
			}
			System.out.print(i + " * " + j + " = " + (i * j) + "\t");			
			
			
			
		}

	}

}
