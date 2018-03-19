package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.service.TrainService;

public class DeleteTrainAction extends ActionSupport {
	
	private TrainService trainservice;
	private int id;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public TrainService getTrainservice() {
		return trainservice;
	}

	public void setTrainservice(TrainService trainservice) {
		this.trainservice = trainservice;
	}
	
	@Override
	public String execute(){
		if(trainservice.deleteTrain(trainservice.findById(id))){
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
}
