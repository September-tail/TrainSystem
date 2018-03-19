package com.dao;

import java.util.List;

import com.model.Pass;
/**
 * 
 * @author xmp
 * @date 2017年12月31日 下午9:05:28
 */
public interface IPassDao {
	
	//根据起始终点站查询，列出列表
	List<Object[]> query(String startstation,String endstation);
	//在上面的基础上查出中间各点的站点，根据车次tnumber查询
	List<Object[]> queryByNumber(String startstation,String endstation,String tnumber);
}
