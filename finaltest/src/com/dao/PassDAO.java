package com.dao;

import java.util.List;

import com.model.Pass;

public interface PassDAO {
	//添加站点
	public void addPass(Pass pass);
	//删除站点
	public void deletePass(Pass pass);
	//更新站点
	public void updatePass(Pass pass);
	//查询站点
	public List<Pass> findPass();
	//根据id查询
	public Pass findPassById(java.lang.Integer id);
	//根据车次查询
	public List<Pass> findPassByNumber(String train_number);
}
