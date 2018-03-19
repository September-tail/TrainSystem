package com.service.Impl;

import java.util.List;

import com.dao.TrainDAO;
import com.model.Train;
import com.service.TrainService;

public class TrainServiceImpl implements TrainService{
	//ע��DAO
	private TrainDAO traindao;

	public TrainDAO getTraindao() {
		return traindao;
	}

	public void setTraindao(TrainDAO traindao) {
		this.traindao = traindao;
	}
	
	//���ӳ���
	public void addTrain(Train train){
		this.traindao.addTrain(train);
	}
	
	//ɾ������
	public boolean deleteTrain(Train train){
		try{
			this.traindao.deleteTrain(train);
			
		}catch(RuntimeException re){
			re.printStackTrace();
			return false;
		}
		return true;
	}
	
	//���³���
	public void updateTrain(Train train){
		this.traindao.updateTrain(train);
	}
	
	//��ѯ����
	public List findTrain(){
		return this.traindao.findTrain();
	}
	public List<Train> findByStation(String start_station,String end_station){
		return this.traindao.findByStation(start_station, end_station);
	}
	//����id��ѯ
	public Train findById(java.lang.Integer id){
		return this.traindao.findById(id);
	}
}
