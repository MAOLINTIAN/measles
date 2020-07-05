package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import vo.Location;
import dao.DaoYear;

public class ServiceYear {
	@SuppressWarnings("rawtypes")
	public List serviceYearDeadchance(String year) {
		DaoYear dcs = new DaoYear();
		List listall = dcs.daoYearDeadchance(year);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			float cc = Float.parseFloat(obj[2].toString());
			float dd = Float.parseFloat(obj[3].toString());
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[3];
			obj1[0] = bb;
			obj1[1] = cc;
			obj1[2] = dd;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);
		}
		return listbig;

	}

	@SuppressWarnings("rawtypes")
	public List serviceYearDeadchanceTop(String year) {
		DaoYear gs = new DaoYear();
		List listall = gs.daoYearDeadchanceTop(year);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			float cc = Float.parseFloat(obj[2].toString());
			float dd = Float.parseFloat(obj[3].toString());
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[3];
			obj1[0] = bb;
			obj1[1] = cc;
			obj1[2] = dd;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);

		}
		return listbig;

	}

	@SuppressWarnings("rawtypes")
	public List serviceYearDeadchanceMin(String year) throws Exception {
		DaoYear gs = new DaoYear();
		List listall = gs.daoYearDeadchanceMin(year);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			float cc = Float.parseFloat(obj[2].toString());
			float dd = Float.parseFloat(obj[3].toString());
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[3];
			obj1[0] = bb;
			obj1[1] = cc;
			obj1[2] = dd;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);

		}
		return listbig;

	}

	@SuppressWarnings("rawtypes")
	public List serviceYearSeakchance(String year) {
		DaoYear dcs = new DaoYear();
		List listall = dcs.daoYearSeakchance(year);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			float cc = Float.parseFloat(obj[2].toString());
			float dd = Float.parseFloat(obj[3].toString()) / 10;
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[3];
			obj1[0] = bb;
			obj1[1] = cc;
			obj1[2] = dd;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);
		}
		return listbig;

	}

	@SuppressWarnings("rawtypes")
	public List serviceYearSeakchanceTop(String year) {
		DaoYear dcs = new DaoYear();
		List listall = dcs.daoYearSeakchanceTop(year);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			float cc = Float.parseFloat(obj[2].toString());
			float dd = Float.parseFloat(obj[3].toString()) / 10;
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[3];
			obj1[0] = bb;
			obj1[1] = cc;
			obj1[2] = dd;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);
		}
		return listbig;

	}

	@SuppressWarnings("rawtypes")
	public List serviceYearSeakchanceMin(String year) {
		DaoYear dcs = new DaoYear();
		List listall = dcs.daoYearSeakchanceMin(year);
		List<HashMap<String, Object>> listbig = new ArrayList<HashMap<String, Object>>();
		for (int i = 0; i < listall.size(); i++) {
			HashMap<String, Object> result = new HashMap<String, Object>();
			Object[] obj = (Object[]) listall.get(i);
			String aa = (String) obj[0];
			float bb = Float.parseFloat(obj[1].toString());
			float cc = Float.parseFloat(obj[2].toString());
			float dd = Float.parseFloat(obj[3].toString()) / 10;
			Location lo = new Location();
			lo.setCity(aa);
			Object[] obj1 = new Object[3];
			obj1[0] = bb;
			obj1[1] = cc;
			obj1[2] = dd;
			lo.setLocation(obj1);
			result.put("name", lo.getCity());
			result.put("value", lo.getLocation());
			listbig.add(result);
		}
		return listbig;

	}
	/*
	 * public static void main(String[] args) { ServiceCitySeekSum sc= new
	 * ServiceCitySeekSum(); List list = sc.listAllSeekSum("1958"); for (int i =
	 * 0; i < list.size(); i++) { System.out.println(list.get(i)); } }
	 */
}
