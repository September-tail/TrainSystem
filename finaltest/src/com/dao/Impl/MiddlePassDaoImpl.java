package com.dao.Impl;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.dao.IMiddlePassDao;
import com.model.HibernateSessionFactory;
import com.model.MiddlePass;
import com.model.Pass;
import com.model.Train;
import com.mysql.jdbc.Util;


@Repository
public class MiddlePassDaoImpl implements IMiddlePassDao{
	public String[][] query_station(String station){
		
		String station_query[][] = new String[40][17];
		Session session = HibernateSessionFactory.getSession();
		//找到起始站所经过的列车车次
		String sql = "SELECT train_number "
				+ "FROM MiddlePass "
				+ "WHERE train_station =:station";
		Query query = session.createQuery(sql);
		query.setString("station", station);
		List<String> list = query.list();
		//找到起始站的所有列车站点
		String sql1 = "SELECT train_station,train_number "
				+ "FROM MiddlePass "
				+ "WHERE train_number=any "
				+ "("
				+ "SELECT train_number "
				+ "FROM MiddlePass "
				+ "WHERE train_station =:station "
				+ ")";
		Query query1 = session.createQuery(sql1);
		query1.setString("station", station);
		List<Object> list1 = query1.list();
		int j = 0;
		int count = 0;
		for (int i=0; i<list.size(); i++) {
			String object = list.get(i);
			station_query[i][0] = object;
			int k = 1;
			for (; j<(list1.size()+1); j++) {
				String change;
				if (j == (list1.size()-2)) {
					Object[] object1 = (Object[])list1.get(j);
					Object[] object2 = (Object[])list1.get(j+1);
					change = String.valueOf(object1[0]);
					station_query[i][k] = change;
					change = String.valueOf(object2[0]);
					station_query[i][k+1] = change;
					break;
				}
				Object[] object1 = (Object[])list1.get(j);
				Object[] object2 = (Object[])list1.get(j+1);
				change = String.valueOf(object1[0]);		//车次
				if(object1[1].equals(object2[1])){
					station_query[i][k] = change;
					count = j;
				}else{
					station_query[i][k] = change;
					count = j;
					break;
				}
				k = k + 1;
			}
			j = count + 1;
		}
		HibernateSessionFactory.closeSession();
		return station_query;
	}
	
	
	public List<String[]> changePass(String start_station, String end_station){
		String total_station[][] = new String[100][100];
		String start[][] = new String[40][17];
		String end[][] = new String[40][17];
		start = query_station(start_station);
		end = query_station(end_station);
		int mutex1 = 0;
		int mutex2 = 0;
		for(int i=0; i<40; i++){	
			for(int j=1; j<17; j++){
				
				if(null != start[i][j]){
					for(int k=0; k<40; k++){
						
						for(int l=1; l<17; l++){
							
							if((null != end[k][l]) && (start[i][j].equals(end[k][l]))){
								//定位到当前起始站和中转站
								int flag1 = 0, flag2 = 0;
								for(int p=0; p<14; p++){
									if((null != start[i][p]) && (start_station.equals(start[i][p]))){
										flag1 = p;
									}
									if((null != start[i][p]) && (start[i][j].equals(start[i][p]))){
										flag2 = p;
									}
								}
								/*System.out.print(start[i][0] + " ");*/
								total_station[mutex1][mutex2] = start[i][0];
								for(int q=flag1; q<=flag2; q++){
									mutex2 = mutex2 + 1;
									total_station[mutex1][mutex2] = start[i][q];
									/*System.out.print(start[i][q] + " ");*/
								}
								//定位到中转站到当前终点站
								int flag3 = 0, flag4 = 0;
								for(int p=0; p<14; p++){
									if((null != end[k][p]) && (start[i][j].equals(end[k][p]))){
										flag3 = p;
									}
									if((null != start[i][p]) && (end_station.equals(end[k][p]))){
										flag4 = p;
									}
								}
								/*System.out.print(end[k][0] + " ");*/
								mutex2 = mutex2 + 1;
								total_station[mutex1][mutex2] = end[k][0];
								for(int q=flag3; q<=flag4; q++){
									mutex2 = mutex2 + 1;
									total_station[mutex1][mutex2] = end[k][q];
									/*System.out.print(end[k][q] + " ");*/
								}
								mutex2 = mutex2 + 1;
								/*System.out.println();
								System.out.println();
								System.out.println();*/
							}
						}
					}
				}
				mutex2 = 0;
				mutex1 = mutex1 + 1;
			}
			
		}
		String final_station[][] = new String[20][20];
		String train_number[] = new String[20];
		int count = 0;
		List<String[]> list = new ArrayList<String[]>();
		
		List<String> finalList = new ArrayList<String>();
		//String finalList[] = new String[];
		for(int i=0;i<100;i++){
			
			if(null != total_station[i][0]){
				list.add(total_station[i]);
			}
		}
		
		return list;
	}
	
}
