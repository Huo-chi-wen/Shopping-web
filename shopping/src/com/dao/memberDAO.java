package com.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.connect.connDB;
import com.model.member;

public class memberDAO {
	
	
	
	public static void sql1()
	{
		String sql="select * from book.member";
		
		
		Session se=connDB.Conn();
		
		
		SQLQuery sl=se.createSQLQuery(sql);
		
		sl.addEntity("B", member.class);
		List li=sl.list();
		for(Object o:li)
		{
			member b=(member)o;
			System.out.println(b.getAccount()+"\t"+
					b.getPassword()+
					"\t"+b.getName());
			
		}
		
			
		
		
	}
	
	public static member checklogin(String account, String password)
	{
		String sql="select * from book.member where account='"+ account +"' and password='"+password+"'";
		
		Session se=connDB.Conn();
		
		SQLQuery sl=se.createSQLQuery(sql);
		
		sl.addEntity("B", member.class);
		List li=sl.list();
		
		for(Object o:li)
		{
			member b=(member)o;

			return b;
		}
		return null;
		
	}
	
	public static void register(member m)
	{
		String sql="insert into book.member ";
		
		Session se=connDB.Conn();
		
		Transaction tx=se.beginTransaction();
		
		se.save(m);
		tx.commit();
		
	}
	public static boolean checkRegister(String account)
	{
		String sql="select * from book.member where account='"+ account +"'";
		
		Session se=connDB.Conn();
		
		SQLQuery q=se.createSQLQuery(sql);
		
		q.addEntity("m", member.class);
		List li=q.list();
		
		boolean b;
		
		
		if(li.size()!=0)
		{
			b=true;
		}
		else
		{
			b=false;
		}
		
		
		return b;
		
	}
	public static void main(String[] args) {
		System.out.println(checkRegister("t"));
		
	}
}
