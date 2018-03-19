package com.dao;

import java.util.List;
import com.model.MiddlePass;

public interface IMiddlePassDao {
	

	public String[][] query_station(String station);
	
	
	List<String[]> changePass(String start_station, String end_station);
}
