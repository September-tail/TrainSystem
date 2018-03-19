package com.action;

import com.model.Train;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TrainService;

public class AddTrainAction extends ActionSupport {
	private Train train;
	public Train getTrain() {
		return train;
	}
	public void setTrain(Train train) {
		this.train = train;
	}

	//×¢Èëservice
	private TrainService trainservice;
	public TrainService getTrainservice() {
		return trainservice;
	}
	public void setTrainservice(TrainService trainservice) {
		this.trainservice = trainservice;
	}
	
	@Override
	public String execute() throws Exception{
		this.trainservice.addTrain(this.train);
		return SUCCESS;
	}
}
