package com.dao;

import java.util.List;

import com.model.Train;

public interface TrainDAO {
	//添加车次
	public void addTrain(Train train);
	//删除车次
	public void deleteTrain(Train train);
	//更新车次
	public void updateTrain(Train train);
	//查询车次
	public List<Train> findTrain();
	//根据站点查询
	public List<Train> findByStation(String start_station,String end_station);
	//根据id查询
	public Train findById(java.lang.Integer id);
	
//	//分页显示
//	public List<Train> findByPage(int pageSize,int pageNow);
	
}
