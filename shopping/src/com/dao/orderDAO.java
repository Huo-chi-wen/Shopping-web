package com.dao;


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.model.Order;





public class orderDAO {
	static Connection conn;
	public static Connection getConn() {
		
		String url="jdbc:mysql://localhost:3306/book";
		String user="root";
		String pass="8888";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, pass);
			return conn;
		} catch (ClassNotFoundException e) {
			System.out.println("NO DRIVER");
			return null;
		} catch (SQLException e) {
			System.out.println("NO CONNECTION");
			return null;
		}
		
	}
	public static void add(Order o)
	{
		Connection conn=getConn();
		
		String sql="insert into orders(total, ordertime, Recipient, address, shipping, orderItem, member) values(?,?,?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setDouble(1, o.getTotal());
			ps.setTimestamp(2, o.getOrdertime());
			ps.setString(3, o.getRecipient());
			ps.setString(4, o.getAddress());
			ps.setString(5, o.getShipping());
			ps.setString(6, o.getOrderItem());
			ps.setString(7, o.getMember());
			ps.executeUpdate();
		}
		catch(SQLException e)
		{
			
		}
	}
	public static ResultSet historyOrder(String member)
	{
		
		String sql="select * from book.orders where member=?";
		
		Connection conn=getConn();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member);
			
			ResultSet rs=ps.executeQuery();
//			while(rs.next()) {
//				
//				System.out.println(rs.getInt("id")+" "+rs.getString("orderitem")+" "+rs.getDate("ordertime")+" "+rs.getInt("total"));
//			}
			
			return rs;
		}
		catch(SQLException e)
		{
			return null;
		}
	}
	public static void main(String[] args) {
	
		historyOrder("asd");
	}
	

}
