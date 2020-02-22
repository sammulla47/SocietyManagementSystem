package com.society;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

public class SocietyRegistrationWorker {

	
	public static String addSocietyRegistration(SocietyRegistration sr)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.save(sr);
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
	
	public static String updateSocietyRegistration(SocietyRegistration sr)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.update(sr);
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
	
	public static String deleteSocietyRegistration(SocietyRegistration sr)
	{
		String result="";
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction t=s.beginTransaction();
			s.delete(sr);
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
	
	public static SocietyRegistration getSocietyRegistrationById(int id)
	{
		SocietyRegistration sr=null;
		try
		{
			Session s=DatabaseConnector.getSession();
			Transaction tx=s.beginTransaction();
			sr=(SocietyRegistration)s.get(SocietyRegistration.class,new Integer(id));
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return sr;
	}
	
	public static List<SocietyRegistration> getAllSocietyRegistration()
	{
		List<SocietyRegistration> list=new ArrayList<>();
		try
		{
			Session s=DatabaseConnector.getSession();
			Criteria c=s.createCriteria(SocietyRegistration.class);
			
			list =c.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static String VerifySocietyRegistration(SocietyRegistration sor){
		String result="";
		try{
			Session s = DatabaseConnector.getSession();
			Criteria c = s.createCriteria(SocietyRegistration.class).add(Restrictions.and(Restrictions.eq("SID", sor.getSID()).ignoreCase(), Restrictions.eq("SocietyName", sor.getSocietyName())));
			SocietyRegistration sr = (SocietyRegistration) c.uniqueResult();
			if(sor.getSPass().equals(sr.SPass)){
				result = Results.SUCCESS;
			}
			s.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
}
