package com.dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.AdminDAO;
import com.model.Admin;

public class AdminDAOImpl extends HibernateDaoSupport implements AdminDAO{
	
	//���ӹ���Ա
	public void saveAdmin(Admin admin){
		this.getHibernateTemplate().save(admin);
	}
	//���ҹ���Ա
	public Admin findAdmin(Admin admin){
		Admin firstadmin=new Admin();
		String hql="from Admin admin where admin.name='"  
                + admin.getName() + "' and admin.password= '"  
                + admin.getPassword() + "'";
		List<Admin> adminlist= this.getHibernateTemplate().find(hql);
		//�ж��Ƿ��в�ѯ��������仰˵�����ж��û��Ƿ����
		if(adminlist.size()>0){
			//ȡ����ѯ����ĵ�һ��ֵ�����������ݿ���û���ظ����û���Ϣ 
			firstadmin=adminlist.get(0);
		}
		return firstadmin;
				
	}
}
