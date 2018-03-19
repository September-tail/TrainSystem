package com.action;

import java.util.List;

import com.model.Train;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TrainService;

public class ShowTrainAction extends ActionSupport{
	private List<Train> trains;
	private TrainService trainservice;
	public List<Train> getTrains() {
		return trains;
	}
	public void setTrains(List<Train> trains) {
		this.trains = trains;
	}
	public TrainService getTrainservice() {
		return trainservice;
	}
	public void setTrainservice(TrainService trainservice) {
		this.trainservice = trainservice;
	}
	
	public String execute() throws Exception{
		trains=trainservice.findTrain();
		return SUCCESS;
	}
}
