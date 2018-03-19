package com.service.Impl;

import com.dao.AdminDAO;
import com.model.Admin;
import com.service.AdminService;

public class AdminServiceImpl implements AdminService{
	//ע��DAO������get��set����
	private AdminDAO adminDAO;

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	//�������Ա��Ϣ
	public void saveAdmin(Admin admin){
		this.adminDAO.saveAdmin(admin);
	}
	//�жϹ���Ա�Ƿ����
	public boolean findAdmin(Admin admin){
		Admin firstadmin=adminDAO.findAdmin(admin);
		if(firstadmin.getName()!=null){
			return true;
		}
		else{
			return false;
		}
	}
}
