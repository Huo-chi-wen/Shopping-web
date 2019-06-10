<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

			    <h1>Login</h1>
			
			  <form action="login">
			 
			    <h3>Username:</h3>
			    
			   <input type="text" placeholder="Username" name="m.account"/><br>
			    <h3>Password:</h3>
			  
			    <input type="password" placeholder="Password" name="m.password"/>
			    <br>
			    
			     
			       <input type="submit" value="Login" class="login-button"/>
			     
			   
			  </form>
			  
			  
			   <h2>Sign Up</h2>
			   
			 <form action="register">
				   Full Name:<input type="text" placeholder="Name" name="m.name" />
				
				   E-mail:<input type="email" placeholder="Email" name="m.email" />
				
				   Username:<input type="text" placeholder="Username" name="m.account" />
				
				   Password:<input type="password" placeholder="Password" name="m.password" />
				
				
				<input type="password" placeholder="Password Confirmation" name="password_c" />
				
				   
			      <input type="submit" value="Login" class="login-button"/>
			   </form> 
			    
         <a href="historyOrder.jsp" >history</a>
     
</body>
</html>