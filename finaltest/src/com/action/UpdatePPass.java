package com.action;

import java.util.Map;

import com.model.Pass;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PassService;

public class UpdatePPass extends ActionSupport{
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
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.pass_service.findPassById(pass.getId()));
		return SUCCESS;
	}
	
}
