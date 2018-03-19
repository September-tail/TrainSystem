package com.dao;

import java.util.List;

import com.model.Train;

public interface TrainDAO {
	//��ӳ���
	public void addTrain(Train train);
	//ɾ������
	public void deleteTrain(Train train);
	//���³���
	public void updateTrain(Train train);
	//��ѯ����
	public List<Train> findTrain();
	//����վ���ѯ
	public List<Train> findByStation(String start_station,String end_station);
	//����id��ѯ
	public Train findById(java.lang.Integer id);
	
//	//��ҳ��ʾ
//	public List<Train> findByPage(int pageSize,int pageNow);
	
}
