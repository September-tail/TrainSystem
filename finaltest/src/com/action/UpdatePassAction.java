package com.action;

import com.model.Pass;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PassService;

public class UpdatePassAction extends ActionSupport{
	private Pass pass;
	private PassService pass_service;
	public Pass getPass() {
		return pass;
	}
	public void setPass(Pass pass) {
		this.pass = pass;
	}
	public PassService getPass_service() {
		return pass_service;
	}
	public void setPass_service(PassService pass_service) {
		this.pass_service = pass_service;
	}
	
	public String execute() throws Exception{
		this.pass_service.updatePass(pass);
		return SUCCESS;
	}
	
}
