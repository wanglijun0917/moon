package com.thunisoft.moon;

import org.junit.Test;

public class TestMath {

	
	public void test1() {
		long l = (long)60 * 100000000;
		System.out.println(l);
	}
	
	@Test
	public void test2() {
		String link = "http://www.bj.pro/newiweb/minfo/view.jsp?DMKID=211&ZLMBH=15&XXBH={XXBH}";
		link = link.replace("{ip}", null).replace("{port}", "123").replace("{XXBH}", "789456");
		System.out.println(link);
		String s = null;
		if(s==null) {
			System.out.println("fdsf");
		}else {
			System.out.println("fdssss");
		}
	}
}
