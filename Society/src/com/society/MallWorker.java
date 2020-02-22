package com.society;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;

public class MallWorker {

	
	public static String addMall(Mall m)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(m);
			t.commit();
			result=Results.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result=Results.PROBLEM;
		}
		return result;
	}
	
	public static String updateMall(Mall m)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(m);
			t.commit();
			result=Results.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result=Results.PROBLEM;
		}
		return result;
	}
	
	public static String deleteMall(Mall m)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(m);
			t.commit();
			result=Results.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result=Results.PROBLEM;
		}
		return result;
	}
	
	public static Mall getMallById(int id)
	{
		Mall m=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			m=(Mall)s.get(Mall.class,new Integer(id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return m;
	}
	
	public static List<Mall> getAllMall()
	{
		List<Mall> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(Mall.class);
			
			list =c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
}

