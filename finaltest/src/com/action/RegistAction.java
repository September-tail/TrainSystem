package com.action;

import com.model.Admin;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AdminService;

public class RegistAction extends ActionSupport {
	private Admin admin;
	//×¢ÈëAdminService
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
		this.adminservice.saveAdmin(this.admin);
		return SUCCESS;
	}
	
}
