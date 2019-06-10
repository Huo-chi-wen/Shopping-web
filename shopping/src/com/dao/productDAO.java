package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Product;



public class productDAO {
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
	public static ResultSet displayLast()
	{
		String sql="select * from book.product ORDER BY id DESC LIMIT 4";
		
		Connection conn=getConn();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
//			while(rs.next()) {
//				
//				System.out.println(rs.getInt("id")+" "+rs.getString("name")+" "+rs.getInt("price")+" "+rs.getInt("stock"));
//			}
			
			return rs;
		}
		catch(SQLException e)
		{
			return null;
		}
	}
	
	public static void add(Product p)
	{
		Connection conn=getConn();
		
		String sql="insert into product(name, price, description, image, stock) values(?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, p.getName());
			ps.setInt(2, p.getPrice());
			ps.setString(3, p.getDescription());
			ps.setString(4, p.getImage());
			ps.setInt(5, p.getStock());
			
			ps.executeUpdate();
		}
		catch(SQLException e)
		{
			
		}
	}
	
	public static Product find(int id) {
		try {
			Connection conn = getConn();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM book.product where id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString(2));
				p.setPrice(rs.getInt(3));
				p.setDescription(rs.getString(4));
				p.setImage(rs.getString(5));
				p.setStock(rs.getInt(6));
				
				return p;
			}
			else {
				return null;
			}
			
		} catch (SQLException e) {
			System.out.println("NO DATA");
		}
		return null;
		
	}
	
	public static void main(String[] args) {
		displayLast();
		
		
//		Product p=find(9);
//		
//		System.out.println(p.toString());
		
		
		
//		Product p=new Product();
//		
//		p.setName("Junior: Writing Your Way Ahead In Advertising");
//		p.setPrice(100);
//		p.setDescription("There are a lot of great advertising books, but none that get down in the dirt with you quite like this one. Thomas Kemeny made a career at some of the best ad agencies in America. In this book he shows how he got in, how he¡¦s stayed in, and how you can do it too. He breaks apart how to write fun, smart, and effective copy¡Veverything from headlines to scripts to experiential activations¡Vgiving readers a lesson on a language we all thought we already knew.");
//		p.setImage("image/Bussiness_1.jpg");
//		p.setStock(50);
//		
//		add(p);
	}
	
}
