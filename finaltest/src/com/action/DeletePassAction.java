package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.service.PassService;

public class DeletePassAction extends ActionSupport{
	private PassService pass_service;
	private int id;
	public PassService getPass_service() {
		return pass_service;
	}
	public void setPass_service(PassService pass_service) {
		this.pass_service = pass_service;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String execute() throws Exception{
		if(pass_service.deletePass(pass_service.findPassById(id))){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
}
