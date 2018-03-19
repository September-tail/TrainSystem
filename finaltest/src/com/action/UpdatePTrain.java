package com.action;

import java.util.Map;

import com.model.Train;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TrainService;

public class UpdatePTrain extends ActionSupport{
	private Train train;
	public Train getTrain() {
		return train;
	}
	public void setTrain(Train train) {
		this.train = train;
	}
	
	private TrainService trainservice;
	public TrainService getTrainservice() {
		return trainservice;
	}
	public void setTrainservice(TrainService trainservice) {
		this.trainservice = trainservice;
	} 
	
	public String execute() throws Exception{
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.trainservice.findById(train.getId()));
		return SUCCESS;
	}
}
