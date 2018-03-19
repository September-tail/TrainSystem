package com.action;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.IMiddlePassService;
import com.service.IPassService;

/**
 * 
 * @author xmp
 * @date 2017��12��31�� 9:10:36
 */
@Controller
public class StationAction {
	
	@Resource
	private IPassService passService;
	@Resource
	private IMiddlePassService middlePassService;
	
	
	public String query() throws UnsupportedEncodingException{
		//request.getAttribute(startstation);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String startstation = request.getParameter("startstation");
		String endstation = request.getParameter("endstation");
//		System.out.println(startstation);
//		System.out.println(endstation);
		List<Object[]> list = passService.query(startstation, endstation);
		if(list.size() == 0){
			List<String[]> list2 = middlePassService.changePass(startstation, endstation);
			
			if(list2.size() == 0){
				return "fail";
			}else{
				request.setAttribute("list",list2);
				return "changepass";
			}
		}else{
			request.setAttribute("list",list); 
			return "success";
		}
		/*request.setAttribute("list",list);  
		return "success";*/
	}
	
	public String queryByNumber() throws UnsupportedEncodingException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		Map<String, Object> map = new HashMap<String, Object>();
		String startstation = request.getParameter("startstation");
		String endstation = request.getParameter("endstation");
		String tnumber = request.getParameter("tnumber");
//		System.out.println(startstation);
//		System.out.println(endstation);
//		System.out.println(tnumber);
		List<Object[]> list = passService.queryByNumber(startstation, endstation, tnumber);
		request.setAttribute("list",list);  
		return "detail";
	}
	
}
