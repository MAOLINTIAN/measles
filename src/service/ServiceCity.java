package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import vo.Location;
import dao.DaoCity;

public class ServiceCity {
	@SuppressWarnings("rawtypes")
	public List listDeadchance(String province) {
		DaoCity dcs = new DaoCity();
		List listall = dcs.listDeadchance(province);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[1];
			obj1[0] = bb;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);
		}
		return listbig;
	}

	@SuppressWarnings("rawtypes")
	public List listSeakchance(String province) {
		DaoCity dcs = new DaoCity();
		List listall = dcs.listSeakchance(province);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[1];
			obj1[0] = bb;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);
		}
		return listbig;
	}

	// 直方图显示
	@SuppressWarnings("rawtypes")
	public HashMap<String, float[]> listSeakAndDeadchance(String province) {
		DaoCity dcs = new DaoCity();
		HashMap<String, float[]> map = new HashMap<String, float[]>();
		List listall = dcs.listSeakAndDeadchance(province);
		float[] everyyearSeak = new float[65];
		float[] everyyearDead = new float[65];

		for (int i = 0; i < listall.size(); i++) {
			Object[] obj = (Object[]) listall.get(i);
			everyyearSeak[i] = Float.parseFloat(obj[2].toString());
			everyyearDead[i] = Float.parseFloat(obj[1].toString());
			System.out.print("seak:   " + everyyearSeak[i]);
			System.out.print("dead:  " + everyyearDead[i]);
			System.out.println("===");
		}
		map.put("everyyearSeak", everyyearSeak);
		map.put("everyyearDead", everyyearDead);
		return map;
	}

	/*
	 * public static void main(String[] args) { ServiceCity sc = new
	 * ServiceCity(); sc.listSeakAndDeadchance("北京市"); for (int i = 0; i <
	 * list.size(); i++) { System.out.println(list.get(i)); } }
	 */

}
