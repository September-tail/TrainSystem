package com.service;

import com.model.Admin;

public interface AdminService {
	//增加管理员
	public void saveAdmin(Admin admin);
	//查找管理员
	public boolean findAdmin(Admin admin);
}
