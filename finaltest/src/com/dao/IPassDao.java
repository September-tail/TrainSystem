package com.dao;

import java.util.List;

import com.model.Pass;
/**
 * 
 * @author xmp
 * @date 2017��12��31�� ����9:05:28
 */
public interface IPassDao {
	
	//������ʼ�յ�վ��ѯ���г��б�
	List<Object[]> query(String startstation,String endstation);
	//������Ļ����ϲ���м�����վ�㣬���ݳ���tnumber��ѯ
	List<Object[]> queryByNumber(String startstation,String endstation,String tnumber);
}
