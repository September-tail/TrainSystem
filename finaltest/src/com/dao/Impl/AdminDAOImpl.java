package com.dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.AdminDAO;
import com.model.Admin;

public class AdminDAOImpl extends HibernateDaoSupport implements AdminDAO{
	
	//增加管理员
	public void saveAdmin(Admin admin){
		this.getHibernateTemplate().save(admin);
	}
	//查找管理员
	public Admin findAdmin(Admin admin){
		Admin firstadmin=new Admin();
		String hql="from Admin admin where admin.name='"  
                + admin.getName() + "' and admin.password= '"  
                + admin.getPassword() + "'";
		List<Admin> adminlist= this.getHibernateTemplate().find(hql);
		//判断是否有查询结果，换句话说就是判断用户是否存在
		if(adminlist.size()>0){
			//取出查询结果的第一个值，理论上数据库是没有重复的用户信息 
			firstadmin=adminlist.get(0);
		}
		return firstadmin;
				
	}
}
