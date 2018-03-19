package com.action;

import com.model.Admin;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AdminService;

public class LoginAction extends ActionSupport{
	private Admin admin;
	//注入service 生成get set方法
	private AdminService adminservice;
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public AdminService getAdminservice() {
		return adminservice;
	}
	public void setAdminservice(AdminService adminservice) {
		this.adminservice = adminservice;
	}
	
	@Override
	public String execute() throws Exception{
		boolean flag=adminservice.findAdmin(admin);
		if(flag){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	
}
