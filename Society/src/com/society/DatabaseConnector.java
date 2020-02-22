package com.society;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class DatabaseConnector {


	public static Session getSession()
	{
	Session s=null;
	try
	{
		Configuration cfg=new Configuration();
		cfg.configure();
		SessionFactory sf=cfg.buildSessionFactory();
		s=sf.openSession();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return s;
	}
}

