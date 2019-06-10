package com.connect;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class connDB {

	public static Session Conn() {
		Configuration conn = new Configuration().configure();
		SessionFactory sf=conn.buildSessionFactory();
		
		Session se=sf.openSession();
		
		return se;
	}
	

	public static void main(String[] args) {
		System.out.println(connDB.Conn());

	}
}
