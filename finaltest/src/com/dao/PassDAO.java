package com.dao;

import java.util.List;

import com.model.Pass;

public interface PassDAO {
	//���վ��
	public void addPass(Pass pass);
	//ɾ��վ��
	public void deletePass(Pass pass);
	//����վ��
	public void updatePass(Pass pass);
	//��ѯվ��
	public List<Pass> findPass();
	//����id��ѯ
	public Pass findPassById(java.lang.Integer id);
	//���ݳ��β�ѯ
	public List<Pass> findPassByNumber(String train_number);
}
