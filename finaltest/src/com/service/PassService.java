package com.service;

import java.util.List;

import com.model.Pass;

public interface PassService {
	//���վ��
		public void addPass(Pass pass);
		//ɾ��վ��
		public boolean deletePass(Pass pass);
		//����վ��
		public void updatePass(Pass pass);
		//��ѯվ��
		public List<Pass> findPass();
		//����id��ѯ
		public Pass findPassById(java.lang.Integer id);
		//���ݳ��β�ѯ
		public List<Pass> findPassByNumber(String train_number);
}
