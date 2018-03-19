package com.action;

import java.util.List;

import com.model.Pass;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PassService;

public class ShowPassByNumber extends ActionSupport {
	private PassService pass_service;
	private List<Pass> passes;
	private String train_number;
	public PassService getPass_service() {
		return pass_service;
	}
	public void setPass_service(PassService pass_service) {
		this.pass_service = pass_service;
	}
	public List<Pass> getPasses() {
		return passes;
	}
	public void setPasses(List<Pass> passes) {
		this.passes = passes;
	}
	public String getTrain_number() {
		return train_number;
	}
	public void setTrain_number(String train_number) {
		this.train_number = train_number;
	}
	
	public String execute() throws Exception{
		passes=pass_service.findPassByNumber(train_number);
		return SUCCESS;
	}
}
