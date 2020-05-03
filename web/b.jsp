<%-- 
    Document   : b
    Created on : Apr 14, 2020, 12:41:43 AM
    Author     : Neha
--%>
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
        Student s=(Student)session.getAttribute("cetpa");
        
        int i=s.getId();
        String n =s.getEmail();
        String c = s.getCourse();
        String e = s.getEmail();
        String a =s.getAddress();
        
        %>
        <fieldset>
            <legend>
                <h1>Get Student Information</h1>
            </legend>
            <table>
                <tr>
                    <td>ID</td><td><%=i %></td><br>
                    <td>NAME</td><td><%=n %></td><br>
                    <td>COURSE</td><td><%=c %></td><br>
                    <td>EMAIL</td><td><%=e %></td><br>
                    <td>ADDRESS</td><td><%=a %></td><br>
                </tr>
            </table>
            
        </fieldset>
        
        
        
    </body>
</html>
