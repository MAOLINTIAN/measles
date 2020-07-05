package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import service.ServiceYear;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ActionYear extends ActionSupport {

	public String year;

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public void getYearDeadchance() throws Exception {
		ServiceYear scs = new ServiceYear();
		// System.out.println(year);
		@SuppressWarnings("rawtypes")
		List listbig = scs.serviceYearDeadchance(year);

		/*
		 * for(int i=0;i<listbig.size();i++){ Object[]
		 * obj=(Object[])listbig.get(i);
		 * System.out.println(obj[0]+","+obj[1]+","+obj[2]);}
		 */

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray json = JSONArray.fromObject(listbig);

		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}

	public void getYearDeadchanceTop() throws Exception {
		ServiceYear gs = new ServiceYear();
		@SuppressWarnings("rawtypes")
		List listbig = gs.serviceYearDeadchanceTop(year);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray json = JSONArray.fromObject(listbig);
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();

	}

	public void getYearDeadchanceMin() throws Exception {
		ServiceYear gs = new ServiceYear();
		@SuppressWarnings("rawtypes")
		List listbig = gs.serviceYearDeadchanceMin(year);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray json = JSONArray.fromObject(listbig);
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}

	public void getYearSeakchance() throws Exception {
		ServiceYear scs = new ServiceYear();
		// System.out.println(year);
		@SuppressWarnings("rawtypes")
		List listbig = scs.serviceYearSeakchance(year);

		/*
		 * for(int i=0;i<listbig.size();i++){ Object[]
		 * obj=(Object[])listbig.get(i);
		 * System.out.println(obj[0]+","+obj[1]+","+obj[2]);}
		 */

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray json = JSONArray.fromObject(listbig);

		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}

	public void getYearSeakchanceTop() throws Exception {
		ServiceYear scs = new ServiceYear();
		// System.out.println(year);
		@SuppressWarnings("rawtypes")
		List listbig = scs.serviceYearSeakchanceTop(year);

		/*
		 * for(int i=0;i<listbig.size();i++){ Object[]
		 * obj=(Object[])listbig.get(i);
		 * System.out.println(obj[0]+","+obj[1]+","+obj[2]);}
		 */

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray json = JSONArray.fromObject(listbig);

		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}

	public void getYearSeakchanceMin() throws Exception {
		ServiceYear scs = new ServiceYear();
		// System.out.println(year);
		@SuppressWarnings("rawtypes")
		List listbig = scs.serviceYearSeakchanceMin(year);

		/*
		 * for(int i=0;i<listbig.size();i++){ Object[]
		 * obj=(Object[])listbig.get(i);
		 * System.out.println(obj[0]+","+obj[1]+","+obj[2]);}
		 */

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray json = JSONArray.fromObject(listbig);

		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}

	/*
	 * public static void main(String[] args) throws Exception {
	 * ActionYearDeadchance ac = new action.ActionYearDeadchance();
	 * //System.out.println(ac.year); ac.getAllSeekSum(); }
	 */

}
