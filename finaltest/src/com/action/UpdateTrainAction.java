package com.action;

import com.model.Train;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TrainService;

public class UpdateTrainAction extends ActionSupport {
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
		this.trainservice.updateTrain(train);
		return SUCCESS;
	}
}
