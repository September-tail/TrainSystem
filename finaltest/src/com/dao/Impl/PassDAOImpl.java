package com.dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.PassDAO;
import com.model.Pass;

public class PassDAOImpl extends HibernateDaoSupport implements PassDAO{
	public void addPass(Pass pass){
		try{
			this.getHibernateTemplate().save(pass);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	public void deletePass(Pass pass){
		try{
			this.getHibernateTemplate().delete(pass);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	public void updatePass(Pass pass){
		try{
			this.getHibernateTemplate().update(pass);
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	public List<Pass> findPass(){
		try{
			String queryString="from com.model.Pass";
			return this.getHibernateTemplate().find(queryString);			
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	public Pass findPassById(java.lang.Integer id){
		try{
			Pass instance=(Pass)this.getHibernateTemplate().get("com.model.Pass", id);
			return instance;
		}catch(RuntimeException re){
			throw re;
		}
	}
	
	public List<Pass> findPassByNumber(String train_number){
		try{
			String queryString="from com.model.Pass p where p.train_number=?";
			return this.getHibernateTemplate().find(queryString,train_number);
		}catch(RuntimeException re){
			throw re;
		}
	}
}
