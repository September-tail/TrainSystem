package com.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.IPassDao;
import com.service.IPassService;

/**
 * 
 * @author xmp
 * @date 2017��12��31�� ����9:08:07
 */
@Service
public class IPassServiceImpl implements IPassService{
	
	@Resource
	private IPassDao passDao;
	
	@Override
	public List<Object[]> query(String startstation, String endstation) {
		// TODO Auto-generated method stub
		
		return passDao.query(startstation, endstation);
	}

	@Override
	public List<Object[]> queryByNumber(String startstation, String endstation, String tnumber) {
		// TODO Auto-generated method stub
		return passDao.queryByNumber(startstation, endstation, tnumber);
	}
	
}
