package com.dao;

import com.model.Admin;

public interface AdminDAO {
	
	//添加管理员
	public void saveAdmin(Admin admin);
	
	//查看管理员是否存在
	public Admin findAdmin(Admin admin);
	
	
}
