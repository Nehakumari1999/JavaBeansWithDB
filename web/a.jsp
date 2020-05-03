<%-- 
    Document   : a
    Created on : Apr 13, 2020, 2:53:59 PM
    Author     : Neha
--%>
<%@page import="java.sql.*"%>
<%@page import="beans.Student" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String i=request.getParameter("id");
            String n =request.getParameter("name");
            String c=request.getParameter("course");
            String e=request.getParameter("email");
            String a=request.getParameter("address");
            
            Student s=new Student();
            s.setId(Integer.parseInt(i));
            s.setName(n);
            s.setCourse(c);
            s.setEmail(e);
            s.setAddress(a);
            
            session.setAttribute("cetpa",a);             
            
           Class.forName("com.mysql.jdbc.Driver");
           Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Quantum", "root", "neha");
           String st="insert into project values(?,?,?,?,?)";
           PreparedStatement p=cn.prepareStatement(st);
           
           p.setString(1, i);
           p.setString(2, n);
           p.setString(3, c);
           p.setString(4, e);
           p.setString(5, a);
           
           int t=p.executeUpdate();
           if(t>0)
           {
               response.sendRedirect("b.jsp");
           }








           
        
        %>
        
        
        
    </body>
</html>
