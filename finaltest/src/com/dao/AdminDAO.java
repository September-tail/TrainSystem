package com.dao;

import com.model.Admin;

public interface AdminDAO {
	
	//��ӹ���Ա
	public void saveAdmin(Admin admin);
	
	//�鿴����Ա�Ƿ����
	public Admin findAdmin(Admin admin);
	
	
}
