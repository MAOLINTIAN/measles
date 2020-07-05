package util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SubString {
	public String getMaxMath(String a) {
		List<String> ss = new ArrayList<String>();
		for (String sss : a.replaceAll("[^0-9]", ",").split(",")) {
			if (sss.length() > 0)
				ss.add(sss);
		}
		for (int i = 0; i < ss.size(); i++) {
			if("3".equals(ss.get(i))){
				ss.remove(i);
				ss.add(i, "1");
			}
		}
		String Max=null;
		Max = Collections.max(ss);
		
		System.out.print(ss);
		
		System.out.println("Max = " + Max);
		return Max;

	}
	public static void main(String[] args) {
		SubString s=new SubString();
		s.getMaxMath("无持续风向≤3级/无持续风向≤3级");
	}

}
