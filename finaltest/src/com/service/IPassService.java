package com.service;

import java.util.List;

/**
 * 
 * @author xmp
 * @date 2017��12��31�� ����9:05:14
 */
public interface IPassService {
	List<Object[]> query(String startstation,String endstation);
	
	List<Object[]> queryByNumber(String startstation,String endstation,String tnumber);
}
