package com.action;

import java.util.List;

import com.model.Pass;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PassService;

public class ShowPassAction extends ActionSupport{
	private List<Pass> passes;
	private PassService pass_service;
	public List<Pass> getPasses() {
		return passes;
	}
	public void setPasses(List<Pass> passes) {
		this.passes = passes;
	}
	public PassService getPass_service() {
		return pass_service;
	}
	public void setPass_service(PassService pass_service) {
		this.pass_service = pass_service;
	}
	
	
	public String execute() throws Exception{
		passes=pass_service.findPass();
		return SUCCESS;
	}
	
}
