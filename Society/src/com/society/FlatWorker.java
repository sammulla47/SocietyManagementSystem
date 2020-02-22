package com.society;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

public class FlatWorker {

	
	public static String addFlat(Flat fl)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(fl);
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
	
	public static String updateFlat(Flat fl)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(fl);
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
	
	public static String deleteFlat(Flat fl)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(fl);
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
	
	public static Flat getFlatById(int id)
	{
		Flat fl=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			fl=(Flat)s.get(Flat.class,new Integer(id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return fl;
	}
	
	public static List<Flat> getAllFlat()
	{
		List<Flat> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(Flat.class);
			
			 list =c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	public static String VerifyFlat(Flat fa){
		String result="";
		try{
			Session s = DatabaseConnector.getSession();
			Criteria c = s.createCriteria(Flat.class).add(Restrictions.and(Restrictions.eq("UserId", fa.getUserId()).ignoreCase(), Restrictions.eq("SocietyName", fa.getSocietyName())));
			Flat fl = (Flat) c.uniqueResult();
			if(fa.getUserPass().equals(fl.UserPass)){
				result = Results.SUCCESS;
			}
			s.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	public static String NameFlat(Flat fn){
		String result="";
		try{
			Session s = DatabaseConnector.getSession();
			Criteria c = s.createCriteria(Flat.class);
			c.add(Restrictions.like("Owner", fn.getOwnerName()));
				result = Results.SUCCESS;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
}