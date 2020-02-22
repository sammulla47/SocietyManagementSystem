package com.society;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.*;


public class FacilitiesWorker {
	
	public static String addFacilities(Facilities f)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(f);
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
	
	public static String updateFacilities(Facilities f)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(f);
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
	
	public static String deleteFacilities(Facilities f)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(f);
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
	
	public static Facilities getFacilitiesById(int id)
	{
		Facilities f=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			f=(Facilities)s.get(Facilities.class,new Integer(id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}
	
	public static List<Facilities> getAllFacilities()
	{ 
		List<Facilities> list=new ArrayList<>();
	
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(Facilities.class);
			
			list =c.list();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}

}
