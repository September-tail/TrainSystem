package com.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.TrainDAO;
import com.model.Train;

public class TrainDAOImpl extends HibernateDaoSupport implements TrainDAO{
	//���ӳ���
	public void addTrain(Train train){
		try{
			this.getHibernateTemplate().save(train);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	//ɾ������
	public void deleteTrain(Train train){
		try{
			this.getHibernateTemplate().delete(train);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	//���³���
	public void updateTrain(Train train){
		try{
			this.getHibernateTemplate().update(train);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	//��ѯ����
	public List<Train> findTrain(){
		try{
			String queryString = "from com.model.Train";
			return this.getHibernateTemplate().find(queryString);
		}catch(RuntimeException re){
			throw re;
		}
	}
	//���ݳ���վ�յ�վ��ѯ
	public List<Train> findByStation(String start_station,String end_station){
		try{
			String queryString="from com.model.Train t where t.start_station=? and t.end_station=?";
			return this.getHibernateTemplate().find(queryString,start_station,end_station);
		}catch(RuntimeException re){
			throw re;
		}
	}
	//����id��ѯ
	public Train findById(java.lang.Integer id){
		try{
			Train instance=(Train)this.getHibernateTemplate().get("com.model.Train", id);
			return instance;
		}catch(RuntimeException re){
			throw re;
		}
	}
//	//��ҳ��ʾ
//	public List<Train> findByPage(int pageSize,int pageNow){
//		List<Train> list=new ArrayList<Train> ();
//		
//	}
	
	
}
