package myutil;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Calculator {

	public static int plus (int a, int b) {
		return a+b;
	}
	
	public static String date () {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd, E");
		Calendar today = Calendar.getInstance();
		today.add(Calendar.DATE, 7);
		return sdf.format(today.getTime());
		
	}
}
