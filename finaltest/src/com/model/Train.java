package com.model;

public class Train {
	private int id;
	private String train_number;
	private String train_type;
	private String start_station;
	private String end_station;
	private int days;
	private int start_time;
	private int end_time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTrain_number() {
		return train_number;
	}
	public void setTrain_number(String train_number) {
		this.train_number = train_number;
	}
	public String getTrain_type() {
		return train_type;
	}
	public void setTrain_type(String train_type) {
		this.train_type = train_type;
	}
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
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
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
