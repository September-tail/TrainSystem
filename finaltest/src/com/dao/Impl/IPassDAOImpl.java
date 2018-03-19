package com.dao.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.dao.IPassDao;
import com.model.HibernateSessionFactory;

import com.model.Pass;
/**
 * 
 * @author xmp
 * 
 */
@Repository
public class IPassDAOImpl implements IPassDao{
	
	@Override
	public List<Object[]> query(String startstation, String endstation) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		/*String sql = " SELECT train_number,startstation,endstation,start_time,end_time,(end_time-start_time) AS Duration FROM( " +
				" (SELECT id, train_number,train_station AS startstation,train_length AS startid,start_time FROM station " +
				" WHERE train_station= ?) t1 LEFT JOIN " +
				" (SELECT train_station AS endstation,train_number AS checi,train_length AS endid,end_time FROM station " +
				" WHERE train_station= ?) t2 " +
				" ON t1.train_number=t2.checi) " +
				" WHERE t1.startid<t2.endid ";*/
		String sql = " SELECT t.train_number,train_type,t3.startstation,t3.endstation,t3.start_time,t3.end_time,t3.Duration,(pseat+passlength*30) AS pseat,(fseat+passlength*30) " +
				" AS fseat,(sseat+passlength*30) AS sseat,(hsleeper+passlength*30) AS hsleeper,(ssheeper+passlength*30) AS ssheeper FROM tnumber AS t " +
				" INNER JOIN seat AS s " +
				" INNER JOIN " +
				" (SELECT train_number,startstation,endstation,start_time,end_time,(end_time-start_time) AS Duration,(t2.endid-t1.startid) AS passlength FROM( " +
				" (SELECT id, train_number,train_station AS startstation,train_length AS startid,start_time FROM station " +
				" WHERE train_station= ?) t1 " +
				" LEFT JOIN " +
				" (SELECT train_station AS endstation,train_number AS checi,train_length AS endid,end_time FROM station " + 
				" WHERE train_station= ?) t2 " +
				" ON t1.train_number=t2.checi) " +
				" WHERE t1.startid<t2.endid) AS t3 " +
				" ON t.train_number = t3.train_number AND t.train_number = s.train_number ";

		SQLQuery sqlquery = session.createSQLQuery(sql);
		
		sqlquery.setString(0, startstation);
		sqlquery.setString(1, endstation);
		
		List<Object[]> list = sqlquery.list();
		//sqlquery.setString(2, tnumber);
		HibernateSessionFactory.closeSession();
		return list;
	}

	@Override
	public List<Object[]> queryByNumber(String startstation, String endstation, String tnumber) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		String sql0 = " SELECT * FROM station AS t0 " +
				" INNER JOIN " +
				" (SELECT checi,startid,train_length AS endid FROM " +
				" (SELECT * FROM station AS t1 RIGHT JOIN " +
				" (SELECT train_station AS startstation,train_number AS checi,train_length AS startid FROM station " +
				" WHERE train_station = ?) AS t2 " +
				" ON t1.train_number = t2.checi " +
				" WHERE t1.train_length >= t2.startid AND train_station = ?) AS t3) AS t4 " +
				" ON t0.train_number = t4.checi AND t0.train_length<=t4.endid AND t0.train_length>=t4.startid ";
		String sql = " SELECT train_number,train_station,start_time,end_time FROM  (" +
					 sql0 + 
					 ") AS t5  WHERE train_number = ?";

		SQLQuery sqlquery = session.createSQLQuery(sql);
		
		sqlquery.setString(0, startstation);
		sqlquery.setString(1, endstation);
		sqlquery.setString(2, tnumber);
		List<Object[]> list = sqlquery.list();
		//sqlquery.setString(2, tnumber);
		HibernateSessionFactory.closeSession();
		return list;
	}
	

    
	
	/*@Override
	public List<Object> query(Pass pass) {
		// TODO Auto-generated method stub
		String sql = "SELECT train_station AS startstation,train_number AS checi,train_length AS startid FROM station WHERE train_station = '����'";
		String hql = "SELECT train_station AS startstation,train_number AS checi,train_length AS startid FROM station WHERE train_station = '����'";
		Session session = HibernateSessionFactory.getSession();
		List list = session.createSQLQuery(sql)
					.addScalar(arg0, arg1);
		Query query = session.createQuery(hql);
		List<Object> list = query.list();
		HibernateSessionFactory.closeSession();
		return list;
		Session session = HibernateSessionFactory.getSession();
		String sql = "SELECT train_station AS startstation,train_number AS checi,train_length AS startid FROM station";
		
		
		return null;
	}*/
	
}

