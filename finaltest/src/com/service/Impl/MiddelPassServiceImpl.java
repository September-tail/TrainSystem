package com.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.IMiddlePassDao;
import com.service.IMiddlePassService;

@Service
public class MiddelPassServiceImpl implements IMiddlePassService{
	
	@Resource
	private  IMiddlePassDao middlePassDao;
	
	@Override
	public List<String[]> changePass(String start_station, String end_station) {
		// TODO Auto-generated method stub
		return middlePassDao.changePass(start_station, end_station);
	}

}
