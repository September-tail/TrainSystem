package com.action;

import java.util.List;

import com.model.Train;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TrainService;

public class ShowByStationAction extends ActionSupport{
	private List<Train> trains;
	private TrainService trainservice;
	private String start_station;
	private String end_station;
	public String getStart_station() {
		return start_station;
	}
	public void setStart_station(String start_station) {
		this.start_station = start_station;
	}
	public String getEnd_station() {
		return end_station;
	}
	public void setEnd_station(String end_station) {
		this.end_station = end_station;
	}

	
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
		trains=trainservice.findByStation(start_station, end_station);
		return SUCCESS;
	}
}
