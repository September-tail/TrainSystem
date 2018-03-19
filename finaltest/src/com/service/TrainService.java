package com.service;

import java.util.List;

import com.model.Train;

public interface TrainService {
		//��ӳ���
		public void addTrain(Train train);
		//ɾ������
		public boolean deleteTrain(Train train);
		//���³���
		public void updateTrain(Train train);
		//��ѯ����
		public List findTrain();
		public List<Train> findByStation(String start_station,String end_station);
		//����id��ѯ
		public Train findById(java.lang.Integer id);
}
