
package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import service.ServiceCountry;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ActionCountry extends ActionSupport {
	public void getCountryGdp() throws Exception {
		ServiceCountry scs = new ServiceCountry();
	
		HashMap<String, float[]>  map = scs.serviceCountryGdp();
		
		 
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONObject json = JSONObject.fromObject(map);
	
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}
	
	
	/*public static void main(String[] args) throws Exception {
		ActionYearDeadchance ac = new action.ActionYearDeadchance();
		//System.out.println(ac.year);
	    ac.getAllSeekSum();
	}*/
	
}
