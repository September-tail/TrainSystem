package com.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.TrainDAO;
import com.model.Train;

public class TrainDAOImpl extends HibernateDaoSupport implements TrainDAO{
	//增加车次
	public void addTrain(Train train){
		try{
			this.getHibernateTemplate().save(train);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	//删除车次
	public void deleteTrain(Train train){
		try{
			this.getHibernateTemplate().delete(train);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	//更新车次
	public void updateTrain(Train train){
		try{
			this.getHibernateTemplate().update(train);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	//查询车次
	public List<Train> findTrain(){
		try{
			String queryString = "from com.model.Train";
			return this.getHibernateTemplate().find(queryString);
		}catch(RuntimeException re){
			throw re;
		}
	}
	//根据出发站终点站查询
	public List<Train> findByStation(String start_station,String end_station){
		try{
			String queryString="from com.model.Train t where t.start_station=? and t.end_station=?";
			return this.getHibernateTemplate().find(queryString,start_station,end_station);
		}catch(RuntimeException re){
			throw re;
		}
	}
	//根据id查询
	public Train findById(java.lang.Integer id){
		try{
			Train instance=(Train)this.getHibernateTemplate().get("com.model.Train", id);
			return instance;
		}catch(RuntimeException re){
			throw re;
		}
	}
//	//分页显示
//	public List<Train> findByPage(int pageSize,int pageNow){
//		List<Train> list=new ArrayList<Train> ();
//		
//	}
	
	
}
