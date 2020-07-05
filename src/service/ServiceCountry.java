
package service;


import java.util.HashMap;
import java.util.List;



import dao.DaoCountry;

public class ServiceCountry {
	public HashMap<String, float[]>  serviceCountryGdp()  {
		DaoCountry dcs = new DaoCountry();
		HashMap<String, float[]> map = new HashMap<String, float[]>();
		@SuppressWarnings("rawtypes")
		List listall = dcs.daoCountryGdp();
		float[] everyyearSeak = new float[60];
		float[] everyyearDead = new float[60];
		float[] everyyearGdp = new float[60];
		float[] everyyearMhi= new float[60];
		float[] everyyearDcp = new float[60];
		
		for (int i = 0; i <listall.size(); i++) {
			Object[] obj = (Object[]) listall.get(i);
			everyyearSeak[i] = Float.parseFloat(obj[5].toString())/100;
			everyyearDead[i] = Float.parseFloat(obj[4].toString());
			everyyearDcp[i] = Float.parseFloat(obj[3].toString())/100;
			everyyearMhi[i] = Float.parseFloat(obj[2].toString())/3;
			everyyearGdp[i] = Float.parseFloat(obj[1].toString());
			/*System.out.print("seak:   "+everyyearSeak[i]);
			System.out.print("dead:  "+everyyearDead[i] );
			System.out.print("gdp:  "+everyyearGdp[i] );
			System.out.println("===");*/
		}
		map.put("everyyearSeak", everyyearSeak);
		map.put("everyyearDead", everyyearDead);
		map.put("everyyearGdp", everyyearGdp);
		map.put("everyyearMhi", everyyearMhi);
		map.put("everyyearDcp", everyyearDcp);
		/*for (int i = 0; i < everyyearGdp.length; i++) {
			System.out.println("gdp:  "+everyyearGdp[i]);
		}*/
		return map;
	}
	public static void main(String[] args) {
		ServiceCountry sc = new ServiceCountry();
		sc.serviceCountryGdp();
	}
}
