package com.service.Impl;

import java.util.List;

import com.dao.PassDAO;
import com.model.Pass;
import com.service.PassService;

public class PassServiceImpl implements PassService{
	private PassDAO passdao;

	public PassDAO getPassdao() {
		return passdao;
	}

	public void setPassdao(PassDAO passdao) {
		this.passdao = passdao;
	}
	
	public void addPass(Pass pass){
		this.passdao.addPass(pass);
	}
	
	public boolean deletePass(Pass pass){
		this.passdao.deletePass(pass);
		return true;
	}
	
	public void updatePass(Pass pass){
		this.passdao.updatePass(pass);
	}
	public List<Pass> findPass(){
		return this.passdao.findPass();
	}
	public Pass findPassById(java.lang.Integer  id){
		return this.passdao.findPassById(id);
	}
	public List<Pass> findPassByNumber(String train_number){
		return this.passdao.findPassByNumber(train_number);
	}
	
}
