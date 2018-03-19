package com.model;

public class MiddlePass {
	
	private int id;
	
	private int train_length;
	
	private String train_station;
	
	private String train_number;
	
	private int start_time;
	
	private int end_time;

	public MiddlePass() {
		super();
	}
	public MiddlePass(int id, int train_length, String train_station, String train_number, int start_time, int end_time) {
		super();
		this.id = id;
		this.train_length = train_length;
		this.train_station = train_station;
		this.train_number = train_number;
		this.start_time = start_time;
		this.end_time = end_time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTrain_length() {
		return train_length;
	}
	public void setTrain_length(int train_length) {
		this.train_length = train_length;
	}
	public String getTrain_station() {
		return train_station;
	}
	public void setTrain_station(String train_station) {
		this.train_station = train_station;
	}
	public String getTrain_number() {
		return train_number;
	}
	public void setTrain_number(String train_number) {
		this.train_number = train_number;
	}
	public int getStart_time() {
		return start_time;
	}
	public void setStart_time(int start_time) {
		this.start_time = start_time;
	}
	public int getEnd_time() {
		return end_time;
	}
	public void setEnd_time(int end_time) {
		this.end_time = end_time;
	}
}
