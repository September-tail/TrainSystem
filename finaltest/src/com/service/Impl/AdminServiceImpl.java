package com.service.Impl;

import com.dao.AdminDAO;
import com.model.Admin;
import com.service.AdminService;

public class AdminServiceImpl implements AdminService{
	//注入DAO，生成get，set方法
	private AdminDAO adminDAO;

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	
	//保存管理员信息
	public void saveAdmin(Admin admin){
		this.adminDAO.saveAdmin(admin);
	}
	//判断管理员是否存在
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
