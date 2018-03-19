package com.action;

import com.model.Pass;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PassService;

public class AddPassAction extends ActionSupport {
	private Pass pass;

	public Pass getPass() {
		return pass;
	}

	public void setPass(Pass pass) {
		this.pass = pass;
	}
	private PassService pass_service;

	public PassService getPass_service() {
		return pass_service;
	}

	public void setPass_service(PassService pass_service) {
		this.pass_service = pass_service;
	}
	
	public String execute() throws Exception{
		this.pass_service.addPass(this.pass);
		return SUCCESS;
	}
	
}
