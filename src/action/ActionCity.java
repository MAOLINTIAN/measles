
package action;



import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import service.ServiceCity;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;


@SuppressWarnings("serial")
public class ActionCity extends ActionSupport {
	public String province;
	

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getDeadchance() throws Exception{
		ServiceCity scs = new ServiceCity();
		@SuppressWarnings("rawtypes")
		List listDead = scs.listDeadchance(province);
		@SuppressWarnings("rawtypes")
		List listSeak= scs.listSeakchance(province);
		HashMap<String, float[]> map =scs.listSeakAndDeadchance(province);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=utf-8");
		// 调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组 JSONObject
		JSONArray jsonlistDead = JSONArray.fromObject(listDead);
		JSONArray jsonlistSeak = JSONArray.fromObject(listSeak);
		JSONObject jsonmap = JSONObject.fromObject(map);
		ServletActionContext.getRequest().getSession().setAttribute("listDead", jsonlistDead);
		ServletActionContext.getRequest().getSession().setAttribute("listSeak", jsonlistSeak);
		ServletActionContext.getRequest().getSession().setAttribute("map", jsonmap);
		return "pieshow";
		/*PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();*/
	}
	
	
	
}
